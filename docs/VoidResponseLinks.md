# OpenapiClient::VoidResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment** | [**Link**](Link.md) | The URI of the payment |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::VoidResponseLinks.new(
  payment: {&quot;href&quot;:&quot;https://api.checkout.com/payments/pay_y3oqhf46pyzuxjbcn2giaqnb44&quot;}
)
```

