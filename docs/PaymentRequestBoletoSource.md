# OpenapiClient::PaymentRequestBoletoSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_type** | **String** | The type of the integration:   - &#x60;direct&#x60;: a ticket object is returned, which a merchant can use to render a ticket to a customer; no redirect url is returned   - &#x60;redirect&#x60;: a redirect url is returned, which the merchant redirects the customer to, to continue payment |  |
| **country** | **String** | Payer&#39;s country code. ISO 3166-1 alpha-2 code. |  |
| **description** | **String** | Payment description | [optional] |
| **payer** | [**PaymentRequestBoletoSourceAllOfPayer**](PaymentRequestBoletoSourceAllOfPayer.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestBoletoSource.new(
  integration_type: null,
  country: null,
  description: null,
  payer: null
)
```

