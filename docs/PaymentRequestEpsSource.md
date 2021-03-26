# OpenapiClient::PaymentRequestEpsSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **purpose** | **String** | Purpose of the payment as appearing on customer&#39;s bank statement. |  |
| **bic** | **String** | BIC (8 or 11-digits) | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestEpsSource.new(
  purpose: null,
  bic: null
)
```

