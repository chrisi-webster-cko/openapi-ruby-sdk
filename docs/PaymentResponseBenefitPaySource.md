# OpenapiClient::PaymentResponseBenefitPaySource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference_number** | **String** | Unique transaction reference number from BenefitPay | [optional] |
| **qr_data** | **String** | String for generating the QR code to be scanned | [optional] |
| **failure_reason** | **String** | Reason for error with payment | [optional] |
| **error_code** | **String** | Error code returned from BenefitPay.  For further detail, the full code meaning has to be requested directly from BenefitPay,  as CKO does not have access to this.  | [optional] |
| **error_description** | **String** | Error description returned from BenefitPay | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentResponseBenefitPaySource.new(
  reference_number: null,
  qr_data: null,
  failure_reason: null,
  error_code: null,
  error_description: null
)
```

