# OpenapiClient::PaymentActionSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the payment action |  |
| **type** | **String** | The type of action |  |
| **response_code** | **String** | The Gateway response code |  |
| **response_summary** | **String** | The Gateway response summary | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentActionSummary.new(
  id: null,
  type: null,
  response_code: 10000,
  response_summary: Approved
)
```

