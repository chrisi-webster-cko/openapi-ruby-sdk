# OpenapiClient::RefundAcceptedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_id** | **String** | The unique identifier for the refund action |  |
| **reference** | **String** | Your reference for the refund request | [optional] |
| **_links** | [**RefundAcceptedResponseLinks**](RefundAcceptedResponseLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RefundAcceptedResponse.new(
  action_id: null,
  reference: ORD-5023-4E89,
  _links: null
)
```

