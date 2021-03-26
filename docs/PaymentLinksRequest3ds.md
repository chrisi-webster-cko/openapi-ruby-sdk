# OpenapiClient::PaymentLinksRequest3ds

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether to process this payment as a 3D Secure payment | [optional][default to false] |
| **attempt_n3d** | **Boolean** | Determines whether to attempt a 3D Secure payment as non-3D Secure should the card issuer not be enrolled | [optional][default to false] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentLinksRequest3ds.new(
  enabled: null,
  attempt_n3d: null
)
```

