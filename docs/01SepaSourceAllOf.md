# OpenapiClient::01SepaSourceAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_address** | [**Model01SepaAddress**](Model01SepaAddress.md) | The payment source owner&#39;s billing address | [optional] |
| **source_data** | [**01SepaSourceAllOfSourceData**](01SepaSourceAllOfSourceData.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::01SepaSourceAllOf.new(
  billing_address: null,
  source_data: null
)
```

