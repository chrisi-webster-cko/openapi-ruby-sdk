# OpenapiClient::PaymentRequestProcessingDlocal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | The two-letter ISO code of the cardholder&#39;s country. | [optional] |
| **payer** | [**PaymentRequestProcessingDlocalPayer**](PaymentRequestProcessingDlocalPayer.md) |  | [optional] |
| **installments** | [**PaymentRequestProcessingDlocalInstallments**](PaymentRequestProcessingDlocalInstallments.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestProcessingDlocal.new(
  country: MX,
  payer: null,
  installments: null
)
```

