# OpenapiClient::EventResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** | The total number of events | [optional] |
| **limit** | **Integer** | The &#x60;limit&#x60; query parameter | [optional] |
| **skip** | **Integer** | The &#x60;skip&#x60; query parameter | [optional] |
| **from** | **Time** | The &#x60;from&#x60; query parameter | [optional] |
| **to** | **Time** | The &#x60;to&#x60; query parameter | [optional] |
| **data** | [**Array&lt;EventSummary&gt;**](EventSummary.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EventResult.new(
  total_count: 100,
  limit: 10,
  skip: 10,
  from: 2018-01-01T00:00Z,
  to: 2018-01-15T12:00Z,
  data: null
)
```

