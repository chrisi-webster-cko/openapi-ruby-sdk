# OpenapiClient::Batch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Batch identifier |  |
| **status** | **String** | The status of the batch |  |
| **_links** | [**BatchLinks**](BatchLinks.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Batch.new(
  id: bat_cyukd74c4xoezfuarvuwdcpzou,
  status: Processing,
  _links: null
)
```

