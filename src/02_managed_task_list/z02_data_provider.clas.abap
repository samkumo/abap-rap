CLASS z02_data_provider DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z02_data_provider IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: lt_task_list TYPE TABLE OF z02_task_list,
          ls_task_list TYPE z02_task_list,
          lv_timestamp type timestampl.
    DELETE FROM z02_task_list.
    get time stamp field lv_timestamp.
    TRY.
*        ls_task_list-client      = sy-mandt.
*        ls_task_list-id          = cl_system_uuid=>create_uuid_x16_static( ).
*        ls_task_list-description = 'Prepare report'.
*        ls_task_list-status      = 'O'.
*        ls_task_list-due_date    = sy-datum + 7.
*        ls_task_list-deleted     = abap_false.
*        ls_task_list-created_at  = lv_timestamp.
*        ls_task_list-created_by  = sy-uname.
*        ls_task_list-changed_at  = lv_timestamp.
*        ls_task_list-changed_by  = sy-uname.
*        APPEND ls_task_list TO lt_task_list.
*
*        ls_task_list-id          = cl_system_uuid=>create_uuid_x16_static( ).
*        ls_task_list-description = 'Review code'.
*        ls_task_list-status      = 'O'.
*        ls_task_list-due_date    = sy-datum + 14.
*        APPEND ls_task_list TO lt_task_list.
*
*        ls_task_list-id          = cl_system_uuid=>create_uuid_x16_static( ).
*        ls_task_list-description = 'Test scenario'.
*        ls_task_list-status      = 'C'.
*        ls_task_list-due_date    = sy-datum + 21.
*        APPEND ls_task_list TO lt_task_list.
      CATCH cx_uuid_error.
        "handle exception
    ENDTRY.
    INSERT z02_task_list FROM TABLE lt_task_list.
    COMMIT WORK.
  ENDMETHOD.

ENDCLASS.
