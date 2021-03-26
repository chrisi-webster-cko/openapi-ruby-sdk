# OpenapiClient::PaymentResponseQPaySourceAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Alphanumeric string containing a description of the payment order. |  |
| **qpay_status** | **String** | The status code returned from the QPay gateway on payment, if available. | [optional] |
| **status_message** | **String** | A message giving further detail on the payment status, for failure/cancelled/success status payments. | [optional] |
| **confirmation_id** | **String** | An identifier from the QPay gateway for a successful payment. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentResponseQPaySourceAllOf.new(
  description: null,
  qpay_status: null,
  status_message: null,
  confirmation_id: null
)
```

