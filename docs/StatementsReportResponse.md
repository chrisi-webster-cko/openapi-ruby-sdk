# OpenapiClient::StatementsReportResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of statements included in the report |  |
| **data** | [**Array&lt;StatementsReportResponseData&gt;**](StatementsReportResponseData.md) | The data object |  |
| **_links** | [**StatementsReportResponseLinks1**](StatementsReportResponseLinks1.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::StatementsReportResponse.new(
  count: 1,
  data: null,
  _links: null
)
```

