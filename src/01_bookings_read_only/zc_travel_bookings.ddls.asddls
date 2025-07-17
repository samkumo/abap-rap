@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Bookings projection'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_TRAVEL_BOOKINGS as projection on ZI_TRAVEL_BOOKINGS
{
 key TravelId,
 AgencyId,
 AgencyName,
 CustomerId,
 CustomerName,
 BeginDate,
 EndDate,
 @Semantics.amount.currencyCode: 'CurrencyCode'
 BookingFee,
 @Semantics.amount.currencyCode: 'CurrencyCode'
 TotalPrice,
 @UI.hidden: true
 CurrencyCode,
 Description,
 @ObjectModel.text.element: ['StatusText']
 Status,
 @Semantics.text: true
 _StatusText.text as StatusText: localized
}
