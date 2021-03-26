# OpenapiClient::EventSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The event identifier | [optional] |
| **type** | **String** | The event type | [optional] |
| **created_on** | **Time** | The date/time the event occurred | [optional] |
| **_links** | [**EventLinks**](EventLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EventSummary.new(
  id: evt_az5sblvku4ge3dwpztvyizgcau,
  type: payment_approved,
  created_on: null,
  _links: null
)
```

