# OpenapiClient::01PaymentRequestTokenSourceAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | The Checkout.com token (e.g., a card or digital wallet token) | [optional] |
| **billing_address** | [**Address**](Address.md) | The customer&#39;s billing address. This will override the billing address specified during tokenization | [optional] |
| **phone** | [**PhoneNumber**](PhoneNumber.md) | The customer&#39;s phone number. This will override the phone number specified during tokenization | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::01PaymentRequestTokenSourceAllOf.new(
  token: tok_ubfj2q76miwundwlk72vxt2i7q,
  billing_address: null,
  phone: null
)
```

