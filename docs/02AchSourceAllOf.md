# OpenapiClient::02AchSourceAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_address** | [**Address**](Address.md) | The payment source owner&#39;s billing address | [optional] |
| **source_data** | [**02AchSourceAllOfSourceData**](02AchSourceAllOfSourceData.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::02AchSourceAllOf.new(
  billing_address: null,
  source_data: null
)
```

