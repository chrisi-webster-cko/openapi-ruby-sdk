# OpenapiClient::Source

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the payment source that can be later used for payments | [optional] |
| **type** | **String** | The payment source type |  |
| **_links** | [**SourceLinks**](SourceLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Source.new(
  id: src_y3oqhf46pyzuxjbcn2giaqnb44,
  type: sepa,
  _links: null
)
```

