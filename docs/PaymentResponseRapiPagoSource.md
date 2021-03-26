# OpenapiClient::PaymentResponseRapiPagoSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dlocal_order_id** | **String** | An ID used for tracking payments in dLocal.  The dLocal &#39;Order ID&#39; will contain this value. | [optional] |
| **dlocal_payment_id** | **String** | An ID returned from dLocal for a created payment.  The dLocal &#39;Payment ID&#39; will contain this value. This value will not be available in the case of rejected payments. | [optional] |
| **failure_reason** | **String** | Reason of payment failure | [optional] |
| **failure_code** | **String** | Failure code | [optional] |
| **integration_type** | **String** | The type of the integration. A redirect url is returned, which the merchant redirects the customer to, to continue payment. | [optional] |
| **description** | **String** | Payment description | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentResponseRapiPagoSource.new(
  dlocal_order_id: b777afcdfdb74e6ab005fff223fe4d0f,
  dlocal_payment_id: D-30150-73979261-1667-4a6d-aaca-92a805cf837d,
  failure_reason: Third party response: Rejected (Error code: 300),
  failure_code: third_party_rejected,
  integration_type: null,
  description: null
)
```

