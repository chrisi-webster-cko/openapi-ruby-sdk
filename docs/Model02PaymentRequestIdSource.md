# OpenapiClient::Model02PaymentRequestIdSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The payment source identifer (e.g., a card source identifier) |  |
| **cvv** | **String** | The card verification value/code (for card sources). 3 digits, except for Amex (4 digits) | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Model02PaymentRequestIdSource.new(
  id: src_wmlfc3zyhqzehihu7giusaaawu,
  cvv: 956
)
```

