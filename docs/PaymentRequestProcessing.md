# OpenapiClient::PaymentRequestProcessing

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aft** | **Boolean** | Indicates whether the payment is an [Account Funding Transaction](https://docs.checkout.com/payment-actions/account-funding-transactions) | [optional] |
| **dlocal** | [**PaymentRequestProcessingDlocal**](PaymentRequestProcessingDlocal.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestProcessing.new(
  aft: null,
  dlocal: null
)
```

