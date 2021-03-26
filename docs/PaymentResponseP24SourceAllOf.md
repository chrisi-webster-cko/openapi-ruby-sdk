# OpenapiClient::PaymentResponseP24SourceAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **p24_descriptor** | **String** | P24 generated payment descriptor, which will contain requested billing descriptor or merchant&#39;s default descriptor  (subject to truncation). | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentResponseP24SourceAllOf.new(
  p24_descriptor: null
)
```

