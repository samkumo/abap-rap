@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Task list base view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z02R_TASK_LIST
  as select from z02_task_list
{
      key id as Id,
      description as Description,
      status as Status,
      due_date as DueDate,
      deleted as Deleted,
      created_at as CreatedAt,
      created_by as CreatedBy
}
