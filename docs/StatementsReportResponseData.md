# OpenapiClient::StatementsReportResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the generated statement | [optional] |
| **period_start** | **Time** | The start date of all transactions and amounts that are encompassed within the statement | [optional] |
| **period_end** | **Time** | The end date of all transactions and amounts that are encompassed within the statement | [optional] |
| **date** | **Time** | The date the statement was generated | [optional] |
| **payouts** | [**Array&lt;StatementsReportResponsePayouts&gt;**](StatementsReportResponsePayouts.md) | The summary is a breakdown of your statement, ordered by the payout currency and its associated payout ID | [optional] |
| **_links** | [**PaymentsReportResponseLinks**](PaymentsReportResponseLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::StatementsReportResponseData.new(
  id: 190110B107654,
  period_start: null,
  period_end: null,
  date: null,
  payouts: null,
  _links: null
)
```

