# OpenapiClient::Model02AchSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_address** | [**Address**](Address.md) | The payment source owner&#39;s billing address |  |
| **source_data** | [**02AchSourceAllOfSourceData**](02AchSourceAllOfSourceData.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Model02AchSource.new(
  billing_address: null,
  source_data: null
)
```

