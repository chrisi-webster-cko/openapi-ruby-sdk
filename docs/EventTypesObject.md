# OpenapiClient::EventTypesObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** |  | [optional] |
| **event_types** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EventTypesObject.new(
  version: 2.0,
  event_types: [&quot;card_verification_declined&quot;,&quot;card_verified&quot;,&quot;dispute_canceled&quot;,&quot;dispute_evidence_required&quot;,&quot;dispute_expired&quot;,&quot;dispute_lost&quot;,&quot;dispute_resolved&quot;,&quot;dispute_won&quot;,&quot;payment_approved&quot;,&quot;payment_risk_matched&quot;,&quot;payment_pending&quot;,&quot;payment_declined&quot;,&quot;payment_expired&quot;,&quot;payment_canceled&quot;,&quot;payment_voided&quot;,&quot;payment_void_declined&quot;,&quot;payment_captured&quot;,&quot;payment_capture_declined&quot;,&quot;payment_capture_pending&quot;,&quot;payment_refunded&quot;,&quot;payment_refund_declined&quot;,&quot;payment_refund_pending&quot;,&quot;payment_chargeback&quot;,&quot;payment_retrieval&quot;]
)
```

