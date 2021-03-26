# OpenapiClient::AddSourceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the payment source that can be used later for payments | [optional] |
| **type** | **String** | The payment source type |  |
| **response_code** | **String** | The Gateway response code |  |
| **customer** | [**SourceResponseCustomer**](SourceResponseCustomer.md) | The customer associated with the payment source if provided in the request | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AddSourceResponse.new(
  id: src_y3oqhf46pyzuxjbcn2giaqnb44,
  type: sepa,
  response_code: 10000,
  customer: null
)
```

