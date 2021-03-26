# OpenapiClient::PaymentAcceptedResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**Link**](Link.md) | The URI of the payment |  |
| **redirect** | [**Link**](Link.md) | The URI that the customer should be redirected to in order to complete the payment | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentAcceptedResponseLinks.new(
  _self: {&quot;href&quot;:&quot;https://api.checkout.com/payments/pay_mbabizu24mvu3mela5njyhpit4&quot;},
  redirect: {&quot;href&quot;:&quot;https://api.checkout.com/3ds/pay_mbabizu24mvu3mela5njyhpit4&quot;}
)
```

