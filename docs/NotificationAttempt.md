# OpenapiClient::NotificationAttempt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status_code** | **Integer** | The HTTP status code returned from the target server | [optional] |
| **response_body** | **String** | The response body returned from the target server | [optional] |
| **send_mode** | **String** | Whether the notification was sent automatically or requested manually | [optional] |
| **timestamp** | **Time** | The date/time the attempt was made | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::NotificationAttempt.new(
  status_code: 400,
  response_body: Bad Request,
  send_mode: null,
  timestamp: null
)
```

