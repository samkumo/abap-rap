@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Bookings'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_TRAVEL_BOOKINGS as select from ZR_TRAVEL as Travel
{
  key Travel.TravelId,
  Travel.AgencyId,
  Travel.CustomerId,
  Travel.BeginDate,
  Travel.EndDate,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  Travel.BookingFee,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  Travel.TotalPrice,
  Travel.CurrencyCode,
  Travel.Description,
  Travel.Status
}
