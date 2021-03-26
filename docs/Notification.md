# OpenapiClient::Notification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique notification identifier | [optional] |
| **url** | **String** | The notification endpoint | [optional] |
| **success** | **Boolean** | Whether the notification eventually succeeded | [optional] |
| **content_type** | **String** | The content type of the data sent to the endpoint | [optional] |
| **attempts** | [**Array&lt;NotificationAttempt&gt;**](NotificationAttempt.md) | The notification events ordered by timestamp in descending order (latest first) | [optional] |
| **_links** | [**NotificationLinks**](NotificationLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Notification.new(
  id: ntf_az5sblvku4ge3dwpztvyizgcau,
  url: https://example.com/webhooks,
  success: false,
  content_type: json,
  attempts: null,
  _links: null
)
```

