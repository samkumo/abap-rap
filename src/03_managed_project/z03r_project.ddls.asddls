@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Project Base-CDS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z03R_PROJECT as select from z03_project
{
    key id as Id,
    name as Name,
    start_date as StartDate,
    created_at as CreatedAt,
    created_by as CreatedBy,
    changed_at as ChangedAt,
    changed_by as ChangedBy
}
