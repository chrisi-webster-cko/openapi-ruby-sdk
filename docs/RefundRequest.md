# OpenapiClient::RefundRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount to refund. If not specified, the full payment amount will be refunded  | [optional] |
| **reference** | **String** | A reference you can later use to identify this refund request | [optional] |
| **metadata** | **Object** | A set of key-value pairs that you can attach to the refund request. It can be useful for storing additional information in a structured format | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RefundRequest.new(
  amount: 6540,
  reference: ORD-5023-4E89,
  metadata: {&quot;coupon_code&quot;:&quot;NY2018&quot;,&quot;partner_id&quot;:123989}
)
```

