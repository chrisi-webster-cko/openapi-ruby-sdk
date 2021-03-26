# OpenapiClient::CaptureAcceptedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_id** | **String** | The unique identifier for the capture action |  |
| **reference** | **String** | Your reference for the capture request | [optional] |
| **_links** | [**CaptureAcceptedResponseLinks**](CaptureAcceptedResponseLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CaptureAcceptedResponse.new(
  action_id: null,
  reference: ORD-5023-4E89,
  _links: null
)
```

