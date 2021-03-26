# OpenapiClient::WebhookRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Your webhook endpoint |  |
| **active** | **Boolean** | Whether the webhook is active | [optional][default to true] |
| **headers** | **Object** |  | [optional] |
| **content_type** | **String** | The content type to be sent to the webhook endpoint | [optional][default to &#39;json&#39;] |
| **event_types** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WebhookRequest.new(
  url: https://example.com/webhooks,
  active: true,
  headers: {&quot;authorization&quot;:&quot;1234&quot;},
  content_type: json,
  event_types: [&quot;payment_approved&quot;,&quot;payment_flagged&quot;,&quot;payment_pending&quot;,&quot;payment_declined&quot;,&quot;payment_expired&quot;,&quot;payment_canceled&quot;,&quot;payment_voided&quot;,&quot;payment_void_declined&quot;,&quot;payment_captured&quot;,&quot;payment_capture_declined&quot;,&quot;payment_capture_pending&quot;,&quot;payment_refunded&quot;,&quot;payment_refund_declined&quot;,&quot;payment_refund_pending&quot;]
)
```

