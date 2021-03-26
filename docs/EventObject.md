# OpenapiClient::EventObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique event identifier | [optional] |
| **type** | **String** | The event type | [optional] |
| **version** | **String** | Determines the version of the event sent | [optional] |
| **created_on** | **Time** | The date/time the event occurred | [optional] |
| **data** | [**Data**](Data.md) |  | [optional] |
| **notifications** | [**Array&lt;NotificationSummary&gt;**](NotificationSummary.md) | The notifications (e.g., webhooks) that have been sent for the event | [optional] |
| **_links** | [**EventLinks**](EventLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EventObject.new(
  id: evt_az5sblvku4ge3dwpztvyizgcau,
  type: payment_approved,
  version: 2.0,
  created_on: null,
  data: null,
  notifications: null,
  _links: null
)
```

