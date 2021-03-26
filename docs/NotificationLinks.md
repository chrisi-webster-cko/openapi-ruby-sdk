# OpenapiClient::NotificationLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**Link**](Link.md) | The URI of the notification | [optional] |
| **_retry** | [**Link**](Link.md) | A link to retry the notification to the configured webhook | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::NotificationLinks.new(
  _self: {&quot;href&quot;:&quot;https://api.checkout.com/events/evt_az5sblvku4ge3dwpztvyizgcau/notifications/ntf_az5sblvku4ge3dwpztvyizgcau&quot;},
  _retry: {&quot;href&quot;:&quot;https://api.checkout.com/events/evt_az5sblvku4ge3dwpztvyizgcau/webhooks/wh_5nuzkt62ddxuho5rwsvt6pyesi/retry&quot;}
)
```

