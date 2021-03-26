# OpenapiClient::Webhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **headers** | **Object** |  | [optional] |
| **content_type** | **String** |  | [optional] |
| **event_types** | **Array&lt;String&gt;** |  | [optional] |
| **_links** | [**WebhookLinks**](WebhookLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Webhook.new(
  id: wh_387ac7a83a054e37ae140105429d76b5,
  url: https://example.com/webhooks,
  active: true,
  headers: {&quot;authorization&quot;:&quot;1234&quot;},
  content_type: json,
  event_types: [&quot;payment_approved&quot;,&quot;payment_flagged&quot;,&quot;payment_pending&quot;,&quot;payment_declined&quot;,&quot;payment_expired&quot;,&quot;payment_canceled&quot;,&quot;payment_voided&quot;,&quot;payment_void_declined&quot;,&quot;payment_captured&quot;,&quot;payment_capture_declined&quot;,&quot;payment_capture_pending&quot;,&quot;payment_refunded&quot;,&quot;payment_refund_declined&quot;,&quot;payment_refund_pending&quot;],
  _links: null
)
```

