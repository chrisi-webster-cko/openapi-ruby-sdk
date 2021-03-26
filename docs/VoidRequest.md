# OpenapiClient::VoidRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference** | **String** | A reference you can later use to identify this void request | [optional] |
| **metadata** | **Object** | A set of key-value pairs that you can attach to the void request. It can be useful for storing additional information in a structured format | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::VoidRequest.new(
  reference: ORD-5023-4E89,
  metadata: {&quot;coupon_code&quot;:&quot;NY2018&quot;,&quot;partner_id&quot;:123989}
)
```

