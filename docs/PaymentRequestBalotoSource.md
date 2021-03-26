# OpenapiClient::PaymentRequestBalotoSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_type** | **String** | The type of the integration. A redirect url is returned, which the merchant redirects the customer to, to continue payment |  |
| **country** | **String** | Payer&#39;s country code. ISO 3166-1 alpha-2 code. |  |
| **description** | **String** | Payment description | [optional] |
| **payer** | [**PaymentRequestBalotoSourceAllOfPayer**](PaymentRequestBalotoSourceAllOfPayer.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestBalotoSource.new(
  integration_type: null,
  country: null,
  description: null,
  payer: null
)
```

