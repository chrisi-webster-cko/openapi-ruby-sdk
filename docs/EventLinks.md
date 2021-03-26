# OpenapiClient::EventLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**Link**](Link.md) | The URI of the event | [optional] |
| **webhooks_retry** | [**Link**](Link.md) | A link to retry all of the webhooks configured for the event | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EventLinks.new(
  _self: {&quot;href&quot;:&quot;https://api.checkout.com/events/evt_az5sblvku4ge3dwpztvyizgcau&quot;},
  webhooks_retry: {&quot;href&quot;:&quot;https://api.checkout.com/events/evt_az5sblvku4ge3dwpztvyizgcau/webhooks/retry&quot;}
)
```

