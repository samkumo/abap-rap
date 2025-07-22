@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Project Task View Entity'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity Z03I_PROJECT_TASK as select from Z03R_PROJECT_TASK
{
    key ProjectId,
    key Id,
    Description,
    Status,
    CreatedAt,
    CreatedBy,
    ChangedAt,
    ChangedBy
}
