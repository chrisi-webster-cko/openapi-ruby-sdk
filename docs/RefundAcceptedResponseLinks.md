# OpenapiClient::RefundAcceptedResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment** | [**Link**](Link.md) | The URI of the payment to be refunded. Use this to check the status of the payment |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RefundAcceptedResponseLinks.new(
  payment: {&quot;href&quot;:&quot;https://api.checkout.com/payments/pay_y3oqhf46pyzuxjbcn2giaqnb44&quot;}
)
```

