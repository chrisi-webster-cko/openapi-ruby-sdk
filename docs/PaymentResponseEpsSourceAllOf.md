# OpenapiClient::PaymentResponseEpsSourceAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **purpose** | **String** | Purpose of the payment as appearing on customer&#39;s bank statement. | [optional] |
| **bic** | **String** | Bank Identifier Code (BIC). It can be exactly 8 characters or 11 characters long. | [optional] |
| **iban** | **String** | International Bank Account Number (IBAN) without whitespaces. | [optional] |
| **account_holder** | **String** | Account holder information. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentResponseEpsSourceAllOf.new(
  purpose: null,
  bic: null,
  iban: null,
  account_holder: null
)
```

