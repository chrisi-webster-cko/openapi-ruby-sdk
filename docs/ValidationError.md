# OpenapiClient::ValidationError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_id** | **String** |  | [optional] |
| **error_type** | **String** |  | [optional] |
| **error_codes** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ValidationError.new(
  request_id: 0HL80RJLS76I7,
  error_type: request_invalid,
  error_codes: null
)
```

