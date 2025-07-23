@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Project Task View Entity'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity Z03I_PROJECT_TASK as select from Z03R_PROJECT_TASK
association to parent Z03I_project as _Project on _Project.Id = $projection.ProjectId
{
    key ProjectId,
    key Id,
    Description,
    Status,
    CreatedAt,
    CreatedBy,
    ChangedAt,
    ChangedBy,
    
    //Association to parent Project
    _Project
}
