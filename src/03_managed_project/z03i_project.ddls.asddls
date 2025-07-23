@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Project View Entity'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define root view entity Z03I_project as select from Z03R_PROJECT
composition [0..*] of Z03I_PROJECT_TASK as _Task
{
    key Id,
    Name,
    StartDate,
    CreatedAt,
    CreatedBy,
    ChangedAt,
    ChangedBy,
    
    //Composition of child Tasks
    _Task
    
}
