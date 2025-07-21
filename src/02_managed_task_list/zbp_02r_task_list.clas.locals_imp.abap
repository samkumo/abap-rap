CLASS lcl_handler DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS setDefaultStatus FOR DETERMINE ON MODIFY
      IMPORTING keys FOR z02r_task_list~setDefaultStatus.
    METHODS validateDueDAte FOR VALIDATE ON SAVE
      IMPORTING keys FOR z02r_task_list~validateDueDAte.

ENDCLASS.

CLASS lcl_handler IMPLEMENTATION.

  METHOD setDefaultStatus.
    DATA: lt_tasks_update TYPE TABLE FOR UPDATE z02r_task_list.
    DATA: ls_task_update LIKE LINE OF lt_tasks_update.

    READ ENTITIES OF z02r_task_list IN LOCAL MODE
      ENTITY z02r_task_list
          ALL FIELDS WITH CORRESPONDING #( keys )
          RESULT DATA(lt_tasks).

    "Collect tasks with initial status
    LOOP AT lt_tasks ASSIGNING FIELD-SYMBOL(<fs_task>) WHERE Status IS INITIAL.
      CLEAR ls_task_update.
      MOVE-CORRESPONDING <fs_task> TO ls_task_update.
      ls_task_update-Status = 'O'. "Set default status to 'Open'
      INSERT ls_task_update INTO TABLE lt_tasks_update.
    ENDLOOP.

    IF lt_tasks_update IS NOT INITIAL.
      "Update tasks with default status
      MODIFY ENTITIES OF z02r_task_list IN LOCAL MODE
        ENTITY z02r_task_list
        UPDATE FIELDS ( Status )
        WITH lt_tasks_update.
    ENDIF.
  ENDMETHOD.

  METHOD validateDueDAte.
    READ ENTITIES OF z02r_task_list IN LOCAL MODE
      ENTITY z02r_task_list
          ALL FIELDS WITH CORRESPONDING #( keys )
          RESULT DATA(lt_tasks).

    LOOP AT lt_tasks ASSIGNING FIELD-SYMBOL(<fs_task>).
      IF <fs_task>-DueDate < sy-datum.
        INSERT VALUE #( %tky = <fs_task>-%tky ) INTO TABLE failed-z02r_task_list.
        INSERT VALUE #( %tky = <fs_task>-%tky
                        %msg = new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                      text     = 'Due date cannot be in the past' )
        ) INTO TABLE reported-z02r_task_list.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

ENDCLASS.
