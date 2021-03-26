# OpenapiClient::PaymentRequestMultibancoSourceAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_country** | **String** | The 2-letter ISO country code of the country in which the payment instrument is issued/operated. |  |
| **account_holder_name** | **String** | The account holder. |  |
| **billing_descriptor** | **String** | Payment billing descriptor. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestMultibancoSourceAllOf.new(
  payment_country: null,
  account_holder_name: null,
  billing_descriptor: null
)
```

