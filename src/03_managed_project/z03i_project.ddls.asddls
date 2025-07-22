@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Project View Entity'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity Z03I_project as select from Z03R_PROJECT
{
    key Id,
    Name,
    StartDate,
    CreatedAt,
    CreatedBy,
    ChangedAt,
    ChangedBy
}
