# OpenapiClient::VoidAcceptedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_id** | **String** | The unique identifier for the void action |  |
| **reference** | **String** | Your reference for the void request | [optional] |
| **_links** | [**VoidAcceptedResponseLinks**](VoidAcceptedResponseLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::VoidAcceptedResponse.new(
  action_id: null,
  reference: ORD-5023-4E89,
  _links: null
)
```

