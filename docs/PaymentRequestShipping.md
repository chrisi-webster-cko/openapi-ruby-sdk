# OpenapiClient::PaymentRequestShipping

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**Address**](Address.md) | The shipping address | [optional] |
| **phone** | [**PhoneNumber**](PhoneNumber.md) | The phone number associated with the shipping address | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestShipping.new(
  address: null,
  phone: null
)
```

