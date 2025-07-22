@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Project Task Base-CDS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z03R_PROJECT_TASK as select from z03_project_task
{   
    key project_id as ProjectId,
    key id as Id,
    description as Description,
    status as Status,
    created_at as CreatedAt,
    created_by as CreatedBy,
    changed_at as ChangedAt,
    changed_by as ChangedBy
}
