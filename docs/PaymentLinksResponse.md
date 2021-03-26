# OpenapiClient::PaymentLinksResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The request id | [optional] |
| **expires_on** | **String** | The date and time when the payment link expires | [optional] |
| **reference** | **String** | A reference you can later use to identify this payment, such as an order number | [optional] |
| **_links** | [**PaymentLinksResponseLinks**](PaymentLinksResponseLinks.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentLinksResponse.new(
  id: cid_7fbeb87f-322d-4a02-9758-2ca48ae65696,
  expires_on: 2020-08-20T20:25:28+08:00,
  reference: ORD-123A,
  _links: null
)
```

