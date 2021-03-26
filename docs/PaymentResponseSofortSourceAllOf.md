# OpenapiClient::PaymentResponseSofortSourceAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **iban** | **String** | IBAN of a payer, available when a payment is authorised. | [optional] |
| **bic** | **String** | BIC of a payer, available when a payment is authorised. | [optional] |
| **account_holder_name** | **String** | The name of a payer, available when a payment is authorised. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentResponseSofortSourceAllOf.new(
  iban: null,
  bic: null,
  account_holder_name: null
)
```

