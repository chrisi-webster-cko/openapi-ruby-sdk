# OpenapiClient::PaymentResponseIdealSourceAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | description |  |
| **bic** | **String** | BIC (8 or 11-digits) BIC of the bank where the Consumer account is held.  If governing law prevents Issuers outside the Netherlands from disclosing this information, field may be omitted.  |  |
| **iban** | **String** | The IBAN of the Consumer Bank account used for payment.  If governing law prevents Issuers outside the Netherlands  from disclosing this information, field may be omitted.  | [optional] |
| **account_holder** | **String** | Name of the Consumer according to the name of the account used for payment.  In the exceptional case that the consumerName cannot be retrieved by the Issuer,  this is filled with &#39;N/A&#39;.  If governing law prevents Issuers outside the Netherlands from disclosing this information, field may be omitted.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentResponseIdealSourceAllOf.new(
  description: null,
  bic: null,
  iban: null,
  account_holder: null
)
```

