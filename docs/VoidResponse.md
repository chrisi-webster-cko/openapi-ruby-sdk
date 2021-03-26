# OpenapiClient::VoidResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique payment identifier |  |
| **action_id** | **String** | The unique identifier for the void action |  |
| **amount** | **Integer** | The void amount |  |
| **currency** | **String** | The three-letter ISO currency code of the payment |  |
| **status** | **String** | The status of the payment |  |
| **response_code** | **String** | The Gateway response code |  |
| **response_summary** | **String** | The Gateway response summary | [optional] |
| **processed_on** | **Time** | The date/time the void was processed |  |
| **reference** | **String** | Your reference for the void request | [optional] |
| **_links** | [**VoidResponseLinks**](VoidResponseLinks.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::VoidResponse.new(
  id: null,
  action_id: null,
  amount: 6540,
  currency: USD,
  status: Voided,
  response_code: 10000,
  response_summary: Approved,
  processed_on: null,
  reference: ORD-5023-4E89,
  _links: null
)
```

