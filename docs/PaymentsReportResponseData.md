# OpenapiClient::PaymentsReportResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique payment identifier. This was previously called &#x60;transaction_id&#x60; | [optional] |
| **processing_currency** | **String** | The currency of the payment when processed by the cardholder | [optional] |
| **payout_currency** | **String** | The currency of the payment when paid out to you | [optional] |
| **requested_on** | **Time** | The date on which the payment was initiated | [optional] |
| **channel_name** | **String** | The name of the channel from which the payment was initiated | [optional] |
| **reference** | **String** | An optional identifier used for tracking payments. This was previously called &#x60;track_id&#x60; | [optional] |
| **payment_method** | **String** | The payment method | [optional] |
| **card_type** | **String** | The card type | [optional] |
| **card_category** | **String** | The card category | [optional] |
| **issuer_country** | **String** | The country of the issuing bank | [optional] |
| **merchant_country** | **String** | The country of the merchant bank | [optional] |
| **mid** | **String** | An optional, user-defined identifier for the business | [optional] |
| **actions** | [**Array&lt;PaymentsReportResponseActions&gt;**](PaymentsReportResponseActions.md) | The actions object | [optional] |
| **_links** | [**PaymentsReportResponseLinks**](PaymentsReportResponseLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentsReportResponseData.new(
  id: pay_nezg6bx2k22utmk4xm5s2ughxi,
  processing_currency: USD,
  payout_currency: GBP,
  requested_on: null,
  channel_name: www.example.com,
  reference: ORD-5023-4E89,
  payment_method: VISA,
  card_type: CREDIT,
  card_category: Consumer,
  issuer_country: US,
  merchant_country: SI,
  mid: 123456,
  actions: null,
  _links: null
)
```

