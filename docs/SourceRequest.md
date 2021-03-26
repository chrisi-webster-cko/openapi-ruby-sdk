# OpenapiClient::SourceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The payment source type |  |
| **reference** | **String** | A reference you can later use to identify the source | [optional] |
| **phone** | [**PhoneNumber**](PhoneNumber.md) | The payment source owner&#39;s phone number | [optional] |
| **customer** | [**SourceRequestCustomer**](SourceRequestCustomer.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SourceRequest.new(
  type: sepa,
  reference: X-080957-N34,
  phone: null,
  customer: null
)
```

