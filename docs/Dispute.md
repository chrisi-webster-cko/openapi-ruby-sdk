# OpenapiClient::Dispute

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The dispute identifier. This is the same as the payment action ID | [optional] |
| **category** | **String** | The reason for the dispute. [Find out more](https://docs.checkout.com/risk-management/disputes#Disputes-Disputereasonsandrecommendedevidence) | [optional] |
| **amount** | **Float** | The amount that is being disputed, in the processing currency | [optional] |
| **currency** | **String** | The processing currency | [optional] |
| **reason_code** | **String** | The reason code provided by the card scheme | [optional] |
| **status** | **String** | The current status of the dispute | [optional] |
| **resolved_reason** | **String** | If the dispute is automatically resolved, &#x60;resolved_reason&#x60; will contain the reason why it was resolved | [optional] |
| **relevant_evidence** | **Array&lt;String&gt;** | &lt;i&gt;This list and the dispute categories will change over time. Your evidence logic should be informed by this field, not hard coded.&lt;/i&gt; | [optional] |
| **evidence_required_by** | **String** | The deadline by which to respond to the dispute. This corresponds to &#x60;received_on&#x60; + &#x60;n&#x60;, where &#x60;n&#x60; is a number of calendar days set by the scheme/acquirer | [optional] |
| **received_on** | **String** | The date and time at which the dispute was issued | [optional] |
| **last_update** | **String** | The date and time at which the dispute was last updated | [optional] |
| **payment** | [**DisputePayment**](DisputePayment.md) |  | [optional] |
| **_links** | [**DisputeLinks**](DisputeLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Dispute.new(
  id: dsp_rbhwd2qrg13uhrp2newf,
  category: fraudulent,
  amount: 999,
  currency: GBP,
  reason_code: C42,
  status: evidence_required,
  resolved_reason: already_refunded,
  relevant_evidence: null,
  evidence_required_by: 2018-08-21T00:00:00Z,
  received_on: 2018-08-01T04:00:10Z,
  last_update: 2018-08-04T10:53:13Z,
  payment: null,
  _links: null
)
```

