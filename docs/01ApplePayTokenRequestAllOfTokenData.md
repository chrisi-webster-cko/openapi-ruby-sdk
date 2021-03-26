# OpenapiClient::01ApplePayTokenRequestAllOfTokenData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | Version information about the payment token. The token uses &#x60;EC_v1&#x60; for ECC-encrypted data, and &#x60;RSA_v1&#x60; for RSA-encrypted data | [optional] |
| **data** | **String** | Encrypted payment data. Base64 encoded as a string | [optional] |
| **signature** | **String** | Signature of the payment and header data. The signature includes the signing certificate, its intermediate CA certificate, and information about the signing algorithm | [optional] |
| **header** | **Object** | Additional version-dependent information used to decrypt and verify the payment | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::01ApplePayTokenRequestAllOfTokenData.new(
  version: null,
  data: null,
  signature: null,
  header: null
)
```

