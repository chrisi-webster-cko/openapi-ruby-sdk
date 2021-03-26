# OpenapiClient::PaymentDestination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The OpenPay account identifier |  |
| **amount** | **Integer** | The amount to be credited to the destination in the major currency unit |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentDestination.new(
  id: vendor-123456,
  amount: null
)
```

