# OpenapiClient::PaymentResponseDestination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The payment destination type.  |  |
| **id** | **String** | The payment source identifier that can be used for subsequent payments. For new sources, this will only be returned if the payment was approved  | [optional] |
| **billing_address** | [**Address**](Address.md) | The payment source owner&#39;s billing address | [optional] |
| **phone** | [**PhoneNumber**](PhoneNumber.md) | The payment source owner&#39;s phone number | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentResponseDestination.new(
  type: card,
  id: src_wmlfc3zyhqzehihu7giusaaawu,
  billing_address: null,
  phone: null
)
```

