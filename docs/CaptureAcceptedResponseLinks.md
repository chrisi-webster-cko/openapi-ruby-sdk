# OpenapiClient::CaptureAcceptedResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment** | [**Link**](Link.md) | The URI of the payment to be captured. Use this to check the status of the payment |  |
| **redirect** | [**Link**](Link.md) | For some alternative payments, the URI that the customer should be redirected to to complete the capture | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CaptureAcceptedResponseLinks.new(
  payment: {&quot;href&quot;:&quot;https://api.checkout.com/payments/pay_y3oqhf46pyzuxjbcn2giaqnb44&quot;},
  redirect: {&quot;href&quot;:&quot;https://api.checkout.com/redirect/act_y3oqhf46pyzuxjbcn2giaqnb44&quot;}
)
```

