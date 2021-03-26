# OpenapiClient::PaymentsReportResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of payments included in the report |  |
| **data** | [**Array&lt;PaymentsReportResponseData&gt;**](PaymentsReportResponseData.md) | The data object |  |
| **_links** | [**PaymentsReportResponseLinks1**](PaymentsReportResponseLinks1.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentsReportResponse.new(
  count: 1,
  data: null,
  _links: null
)
```

