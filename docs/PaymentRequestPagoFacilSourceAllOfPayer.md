# OpenapiClient::PaymentRequestPagoFacilSourceAllOfPayer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Payer&#39;s full name. |  |
| **email** | **String** | Payer&#39;s email address. |  |
| **document** | **String** | Payer&#39;s document identifier in Argentina, namely, Documento Nacional de Identidad (DNI) or Clave Ãšnica de IdentificaciÃ³n Tributaria (CUIT). |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestPagoFacilSourceAllOfPayer.new(
  name: null,
  email: null,
  document: 27332162
)
```

