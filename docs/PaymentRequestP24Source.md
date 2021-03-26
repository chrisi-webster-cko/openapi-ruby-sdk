# OpenapiClient::PaymentRequestP24Source

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_country** | **String** | The 2-letter ISO country code of the country in which the payment instrument is issued/operated. |  |
| **account_holder_name** | **String** | The account holder. |  |
| **account_holder_email** | **String** | RFC compliant email address of the account holder. |  |
| **billing_descriptor** | **String** | Payment billing descriptor. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestP24Source.new(
  payment_country: null,
  account_holder_name: null,
  account_holder_email: null,
  billing_descriptor: null
)
```

