# OpenapiClient::PaymentsReportResponseBreakdown

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Describes an amount or fee associated with an action. For example, a gateway fee, capture fee and capture amount would all be associated with the capture action | [optional] |
| **date** | **Time** | Specifies an associated date with a specific amount (some external fees are returned after the associated action) | [optional] |
| **processing_currency_amount** | **String** | The associated amount in the processing currency (if applicable). Numerical values up to 8 decimal places are provided in the response | [optional] |
| **payout_currency_amount** | **String** | The associated amount in the payout currency. Numerical values up to 8 decimal places are provided in the response | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentsReportResponseBreakdown.new(
  type: Gateway Fee Tax ARE USD/GBP@0.7640412612,
  date: null,
  processing_currency_amount: -0.003,
  payout_currency_amount: -0.00229212
)
```

