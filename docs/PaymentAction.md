# OpenapiClient::PaymentAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the payment action |  |
| **type** | **String** | The type of action |  |
| **processed_on** | **Time** | The date/time the action was processed |  |
| **amount** | **Integer** | The action amount |  |
| **approved** | **Boolean** | Whether the action was successful | [optional] |
| **auth_code** | **String** | The acquirer authorization code for cards | [optional] |
| **response_code** | **String** | The Gateway response code |  |
| **response_summary** | **String** | The Gateway response summary | [optional] |
| **reference** | **String** | Your reference for the action | [optional] |
| **processing** | [**PaymentActionProcessing**](PaymentActionProcessing.md) |  | [optional] |
| **metadata** | **Object** | A set of key-value pairs that you can attach to an action | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentAction.new(
  id: null,
  type: null,
  processed_on: null,
  amount: 6540,
  approved: true,
  auth_code: 643381,
  response_code: 10000,
  response_summary: Approved,
  reference: ORD-5023-4E89,
  processing: null,
  metadata: null
)
```

