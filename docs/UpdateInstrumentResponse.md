# OpenapiClient::UpdateInstrumentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The instrument type |  |
| **fingerprint** | **String** | A token that can uniquely identify this card across all customers |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UpdateInstrumentResponse.new(
  type: card,
  fingerprint: vnsdrvikkvre3dtrjjvlm5du4q
)
```

