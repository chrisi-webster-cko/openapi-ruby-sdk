# OpenapiClient::DisputePayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The payment identifier | [optional] |
| **amount** | **Float** | The amount that is being disputed, in the processing currency | [optional] |
| **currency** | **String** | The payment currency | [optional] |
| **method** | **String** | The payment method used | [optional] |
| **arn** | **String** | The acquirer reference number (ARN) | [optional] |
| **processed_on** | **String** | The date and time at which the payment was requested | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DisputePayment.new(
  id: pay_88cb4e671m1da22e9bbbyx,
  amount: 999,
  currency: GBP,
  method: Visa,
  arn: AA246873253573571073808,
  processed_on: 2018-08-01T08:18:10Z
)
```

