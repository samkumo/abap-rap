@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Task list projection'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
define root view entity Z02C_TASK_LIST as projection on Z02I_TASK_LIST
{   
    @UI.hidden: true
    key Id,
    @UI.lineItem: [{position: 10, label: 'Description'}]
    @Search.defaultSearchElement: true
    Description,
    @UI.lineItem: [{position: 20, label: 'Status'}]
    Status,
    @UI.lineItem: [{position: 30, label: 'Due Date'}]
    DueDate,
    @UI.lineItem: [{position: 40, label: 'Deleted'}]
    Deleted
}
