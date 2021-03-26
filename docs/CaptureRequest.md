# OpenapiClient::CaptureRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount to capture. If not specified, the full payment amount will be captured  | [optional] |
| **reference** | **String** | A reference you can later use to identify this capture request | [optional] |
| **metadata** | **Object** | A set of key-value pairs that you can attach to the capture request. This can be useful for storing additional information in a structured format | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CaptureRequest.new(
  amount: 6540,
  reference: ORD-5023-4E89,
  metadata: {&quot;coupon_code&quot;:&quot;NY2018&quot;,&quot;partner_id&quot;:123989}
)
```

