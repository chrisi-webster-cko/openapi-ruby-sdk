# OpenapiClient::StatementsReportResponsePayouts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | The currency of the payout | [optional] |
| **carried_forward_amount** | **String** | The amount carried forward before the statement period | [optional] |
| **current_period_amount** | **String** | The total amount of transactions during the statement period | [optional] |
| **net_amount** | **String** | The total amount paid out to your bank account | [optional] |
| **date** | **Time** | The date the payout was completed | [optional] |
| **period_start** | **Time** | The period start date | [optional] |
| **period_end** | **Time** | The period end date | [optional] |
| **id** | **String** | Identifies the associated payment | [optional] |
| **status** | **String** | The status of the payout | [optional] |
| **payout__fee** | **String** | The total fee charged for the payout | [optional] |
| **_links** | [**StatementsReportResponseLinks**](StatementsReportResponseLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::StatementsReportResponsePayouts.new(
  currency: GBP,
  carried_forward_amount: 0,
  current_period_amount: 15005.24,
  net_amount: 15005.24,
  date: null,
  period_start: null,
  period_end: null,
  id: ABCDEFGH,
  status: Remitted,
  payout__fee: -5,
  _links: null
)
```

