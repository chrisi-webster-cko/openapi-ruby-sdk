# OpenapiClient::PaymentRequestGiropaySourceAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **purpose** | **String** | Purpose of the payment as appearing on customer&#39;s bank statement. |  |
| **bic** | **String** | BIC (8 or 11-digits) | [optional] |
| **info_fields** | [**Array&lt;PaymentRequestGiropaySourceAllOfInfoFields&gt;**](PaymentRequestGiropaySourceAllOfInfoFields.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestGiropaySourceAllOf.new(
  purpose: null,
  bic: null,
  info_fields: null
)
```

