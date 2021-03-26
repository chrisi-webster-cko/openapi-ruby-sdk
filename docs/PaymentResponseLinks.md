# OpenapiClient::PaymentResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**Link**](Link.md) | The URI of the payment |  |
| **actions** | [**Link**](Link.md) | A link to the payment&#39;s associated actions |  |
| **void** | [**Link**](Link.md) | A link to void the payment, where applicable | [optional] |
| **capture** | [**Link**](Link.md) | A link to capture the payment, where applicable | [optional] |
| **refund** | [**Link**](Link.md) | A link to refund the payment, where applicable | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentResponseLinks.new(
  _self: null,
  actions: null,
  void: null,
  capture: null,
  refund: null
)
```

