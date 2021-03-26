# OpenapiClient::HostedPaymentsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference** | **String** | A reference you can later use to identify this payment, such as an order number | [optional] |
| **_links** | [**HostedPaymentsResponseLinks**](HostedPaymentsResponseLinks.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::HostedPaymentsResponse.new(
  reference: ORD-5023-4E89,
  _links: null
)
```

