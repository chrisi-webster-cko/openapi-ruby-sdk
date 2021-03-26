# OpenapiClient::Model02PaymentRequestIdDestination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The payment source identifier (e.g., a card source identifier) |  |
| **first_name** | **String** | The payout destination owner&#39;s first name |  |
| **last_name** | **String** | The payout destination owner&#39;s last name |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Model02PaymentRequestIdDestination.new(
  id: src_wmlfc3zyhqzehihu7giusaaawu,
  first_name: John,
  last_name: Smith
)
```

