# OpenapiClient::02GooglePayTokenRequestAllOfTokenData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature** | **String** | Verifies the message came from Google. The signature is created using ECDSA | [optional] |
| **protocol_version** | **String** | Identifies which encryption/signing scheme created this message. In this way, the protocol can evolve over time if needed. If it is not set, assume ECv0 | [optional] |
| **signed_message** | **String** | A serialized JSON string containing the encryptedMessage, ephemeralPublicKey, and tag. To simplify the signature verification process, this value is serialized | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::02GooglePayTokenRequestAllOfTokenData.new(
  signature: null,
  protocol_version: null,
  signed_message: null
)
```

