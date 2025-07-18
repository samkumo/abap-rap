@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Bookings projection'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
define root view entity ZC_TRAVEL_BOOKINGS
  as projection on ZI_TRAVEL_BOOKINGS
{
  key TravelId,
      AgencyId,
      @UI.lineItem: [{position: 10, label: 'Agency Name'}]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      AgencyName,
      CustomerId,
      @UI.hidden: true
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      CustomerLastName,
      @UI.hidden: true
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      CustomerFirstName,
      @UI.lineItem: [{position: 20, label: 'Customer Name'}]
      CustomerName,
      @UI.lineItem: [{position: 30}]
      BeginDate,
      @UI.lineItem: [{position: 40}]
      EndDate,
      @UI.lineItem: [{position: 50 }]
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @UI.lineItem: [{position: 60 }]
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      @UI.hidden: true
      CurrencyCode,
      @UI.lineItem: [{position: 70}]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Description,
      @ObjectModel.text.element: ['StatusText']
      Status,
      @UI.lineItem: [{position: 80, label: 'Status'}]
      @Semantics.text: true
      _StatusText.text as StatusText : localized
}
