# OpenapiClient::PaymentResponseMultibancoSourceAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_reference** | **String** | Multibanco payment reference | [optional] |
| **service_supplier_id** | **String** | The identifier of a supplier charging for its service or product | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentResponseMultibancoSourceAllOf.new(
  payment_reference: null,
  service_supplier_id: null
)
```

