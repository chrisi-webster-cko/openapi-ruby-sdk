# OpenapiClient::InvalidError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_id** | **String** |  | [optional] |
| **error_type** | **String** |  | [optional] |
| **details** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InvalidError.new(
  request_id: 0HL80RJLS76I7,
  error_type: request_malformed,
  details: null
)
```

