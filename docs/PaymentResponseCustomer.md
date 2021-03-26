# OpenapiClient::PaymentResponseCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The customer&#39;s unique identifier. This can be passed as a source when making a payment |  |
| **email** | **String** | The customer&#39;s email address | [optional] |
| **name** | **String** | The customer&#39;s name | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentResponseCustomer.new(
  id: cus_y3oqhf46pyzuxjbcn2giaqnb44,
  email: jokershere@gmail.com,
  name: Jack Napier
)
```

