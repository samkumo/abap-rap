CLASS lhc_z03i_project_task DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS setDefaultStatus FOR DETERMINE ON MODIFY
      IMPORTING keys FOR z03i_project_task~setDefaultStatus.

ENDCLASS.

CLASS lhc_z03i_project_task IMPLEMENTATION.

  METHOD setDefaultStatus.
    DATA lt_update TYPE TABLE FOR UPDATE z03i_project_task.
    READ ENTITIES OF Z03i_PROJECT_TASK IN LOCAL MODE
      ENTITY z03i_project_task
      ALL FIELDS WITH CORRESPONDING #( keys )
      RESULT DATA(lt_tasks).

    LOOP AT lt_tasks ASSIGNING FIELD-SYMBOL(<fs_task>) WHERE status IS INITIAL.
      <fs_task>-Status = 'O'.
      INSERT INITIAL LINE INTO TABLE lt_update ASSIGNING FIELD-SYMBOL(<fs_update>).
      IF sy-subrc = 0.
        MOVE-CORRESPONDING <fs_task> TO <fs_update>.
      ENDIF.
    ENDLOOP.

    IF lt_update IS NOT INITIAL.
      MODIFY ENTITIES OF z03i_project_task IN LOCAL MODE
      ENTITY z03i_project_task
      UPDATE FIELDS ( status )
      WITH lt_update.
    ENDIF.
  ENDMETHOD.

ENDCLASS.

*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
