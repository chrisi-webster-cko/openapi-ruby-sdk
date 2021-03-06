# OpenapiClient::PaymentActionProcessing

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **retrieval_reference_number** | **String** | A unique identifier for the authorization that is submitted to the card scheme during processing | [optional] |
| **acquirer_reference_number** | **String** | A unique identifier for the capture that is submitted to the card scheme during processing | [optional] |
| **acquirer_transaction_id** | **String** | A unique identifier for the transaction generated by the acquirer | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentActionProcessing.new(
  retrieval_reference_number: 909913440644,
  acquirer_reference_number: 24021219099007452440793,
  acquirer_transaction_id: 440644309099499894406
)
```

