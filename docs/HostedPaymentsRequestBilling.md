# OpenapiClient::HostedPaymentsRequestBilling

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**Address**](Address.md) | The billing address |  |
| **phone** | [**PhoneNumber**](PhoneNumber.md) | The customer&#39;s phone number. This will override the phone number specified during tokenization | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::HostedPaymentsRequestBilling.new(
  address: null,
  phone: null
)
```

