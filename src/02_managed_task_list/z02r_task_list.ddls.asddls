@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Task list base view'
@Metadata.allowExtensions: true
define root view entity Z02R_TASK_LIST
  as select from z02_task_list
{
      key id as Id,
      description as Description,
      status as Status,
      due_date as DueDate,
      deleted as Deleted,
      @Semantics.systemDateTime.createdAt: true
      created_at as CreatedAt,
      @Semantics.user.createdBy: true
      created_by as CreatedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      changed_at as ChangedAt,
      @Semantics.user.lastChangedBy: true
      changed_by as ChangedBy
}
