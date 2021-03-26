# OpenapiClient::02PaymentRequestIdDestinationAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The payment source identifier (e.g., a card source identifier) | [optional] |
| **first_name** | **String** | The payout destination owner&#39;s first name | [optional] |
| **last_name** | **String** | The payout destination owner&#39;s last name | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::02PaymentRequestIdDestinationAllOf.new(
  id: src_wmlfc3zyhqzehihu7giusaaawu,
  first_name: John,
  last_name: Smith
)
```

