# OpenapiClient::DisputeSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The dispute identifier. This is the same as the action ID in the reconciliation API or the charge ID in the Hub. | [optional] |
| **category** | **String** | The reason for the dispute. [Find out more](https://docs.checkout.com/docs/disputes#section-dispute-reasons-and-recommended-evidence) | [optional] |
| **status** | **String** | The current status of the dispute | [optional] |
| **amount** | **Float** | The amount that is being disputed, in the processing currency | [optional] |
| **currency** | **String** | The currency the payment was made in | [optional] |
| **payment_id** | **String** | The unique payment identifier | [optional] |
| **payment_reference** | **String** | An optional reference (such as an order ID) a merchant can use to later identify the charge. Previously known as TrackId | [optional] |
| **payment_arn** | **String** | The acquirer reference number that can be used to query the issuing bank | [optional] |
| **payment_method** | **String** | The payment method/card scheme | [optional] |
| **evidence_required_by** | **String** | The deadline by which to respond to the dispute. This corresponds to &#x60;received_on&#x60; + &#x60;n&#x60;, where &#x60;n&#x60; is a number of calendar days set by the scheme/acquirer | [optional] |
| **received_on** | **String** | The date and time at which the dispute was issued | [optional] |
| **last_update** | **String** | The date and time at which the dispute was last updated | [optional] |
| **_links** | [**DisputeSummaryLinks**](DisputeSummaryLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DisputeSummary.new(
  id: dsp_rbhwd2qrg13uhrp2newf,
  category: fraudulent,
  status: evidence_required,
  amount: 999,
  currency: GBP,
  payment_id: pay_88cb4e671m1da22e9bbbyx,
  payment_reference: th7zxa1kcnqmes8,
  payment_arn: 74548998294293193445538,
  payment_method: VISA,
  evidence_required_by: 2018-08-22T00:00:00Z,
  received_on: 2018-08-01T01:15:56Z,
  last_update: 2018-08-12T04:15:56Z,
  _links: null
)
```

