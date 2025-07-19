@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Task list interface view'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z02I_TASK_LIST
  as select from Z02R_TASK_LIST
{
  key Id,
      Description,
      Status,
      DueDate,
      Deleted
}
