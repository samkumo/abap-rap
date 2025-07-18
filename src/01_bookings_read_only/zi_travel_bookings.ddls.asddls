@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Bookings'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_TRAVEL_BOOKINGS as select from ZR_TRAVEL as Travel
association [0..1] to ZR_AGENCY as _Agency on _Agency.AgencyId = Travel.AgencyId
association [0..1] to ZR_CUSTOMER as _Customer on _Customer.CustomerId = Travel.CustomerId
association [0..*] to ZR_TRAVEL_STATUS_T as _StatusText on _StatusText.Status = Travel.Status 
{
  key Travel.TravelId,
  Travel.AgencyId,
  _Agency.Name as AgencyName,
  Travel.CustomerId,
  _Customer.LastName as CustomerLastName,
  _Customer.FirstName as CustomerFirstName,
  concat_with_space( _Customer.FirstName, _Customer.LastName, 1 ) as CustomerName,
  Travel.BeginDate,
  Travel.EndDate,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  Travel.BookingFee,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  Travel.TotalPrice,
  Travel.CurrencyCode,
  Travel.Description,
  @UI.hidden: true
  Travel.Status,
  
  _StatusText
}
