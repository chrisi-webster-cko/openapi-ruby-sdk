# OpenapiClient::Model01SepaSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_address** | [**Model01SepaAddress**](Model01SepaAddress.md) | The payment source owner&#39;s billing address |  |
| **source_data** | [**01SepaSourceAllOfSourceData**](01SepaSourceAllOfSourceData.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Model01SepaSource.new(
  billing_address: null,
  source_data: null
)
```

