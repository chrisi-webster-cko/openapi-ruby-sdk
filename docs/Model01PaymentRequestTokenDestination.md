# OpenapiClient::Model01PaymentRequestTokenDestination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | The Checkout.com token (e.g., a card, wallet or token) |  |
| **first_name** | **String** | The payout destination owner&#39;s first name |  |
| **last_name** | **String** | The payout destination owner&#39;s last name |  |
| **billing_address** | [**Address**](Address.md) | The payout destination owner&#39;s billing address. This will override the billing address specified during tokenization | [optional] |
| **phone** | [**PhoneNumber**](PhoneNumber.md) | The payout destination owner&#39;s phone number. This will override the phone number specified during tokenization | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Model01PaymentRequestTokenDestination.new(
  token: tok_ubfj2q76miwundwlk72vxt2i7q,
  first_name: John,
  last_name: Smith,
  billing_address: null,
  phone: null
)
```

