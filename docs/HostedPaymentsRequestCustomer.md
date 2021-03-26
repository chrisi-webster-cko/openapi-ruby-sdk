# OpenapiClient::HostedPaymentsRequestCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | An optional email address to associate with the customer | [optional] |
| **name** | **String** | The customer&#39;s name. This will only set the name for new customers | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::HostedPaymentsRequestCustomer.new(
  email: jokershere@email.com,
  name: Jack Napier
)
```

