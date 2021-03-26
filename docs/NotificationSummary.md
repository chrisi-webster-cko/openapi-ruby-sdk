# OpenapiClient::NotificationSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique notification identifier | [optional] |
| **url** | **String** | The notification endpoint | [optional] |
| **success** | **Boolean** | Whether the notification eventually succeeded | [optional] |
| **_links** | [**NotificationSummaryLinks**](NotificationSummaryLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::NotificationSummary.new(
  id: ntf_az5sblvku4ge3dwpztvyizgcau,
  url: https://example.com/webhooks,
  success: false,
  _links: null
)
```

