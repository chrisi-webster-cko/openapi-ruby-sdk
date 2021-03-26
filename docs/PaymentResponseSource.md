# OpenapiClient::PaymentResponseSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The payment source type. For any payment request sources that result in a card token (token, source ID, etc.), this will be &#x60;card&#x60;; otherwise it will be the name of the alternative payment method  |  |
| **id** | **String** | The payment source identifier that can be used for subsequent payments. For new sources, this will only be returned if the payment was approved  | [optional] |
| **billing_address** | [**Address**](Address.md) | The payment source owner&#39;s billing address | [optional] |
| **phone** | [**PhoneNumber**](PhoneNumber.md) | The payment source owner&#39;s phone number | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentResponseSource.new(
  type: card,
  id: src_nwd3m4in3hkuddfpjsaevunhdy,
  billing_address: null,
  phone: null
)
```

