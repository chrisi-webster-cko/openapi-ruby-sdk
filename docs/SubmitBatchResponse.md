# OpenapiClient::SubmitBatchResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Batch identifier |  |
| **status** | **String** | The batch status |  |
| **_links** | [**BatchLinks**](BatchLinks.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SubmitBatchResponse.new(
  id: bat_cyukd74c4xoezfuarvuwdcpzou,
  status: Processing,
  _links: null
)
```

