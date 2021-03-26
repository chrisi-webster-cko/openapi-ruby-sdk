# OpenapiClient::UpdateInstrumentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expiry_month** | **Integer** | The expiry month | [optional] |
| **expiry_year** | **Integer** | The expiry year | [optional] |
| **name** | **String** | The name of the cardholder | [optional] |
| **account_holder** | [**RetrieveInstrumentResponseAccountHolder**](RetrieveInstrumentResponseAccountHolder.md) |  | [optional] |
| **customer** | [**UpdateInstrumentRequestCustomer**](UpdateInstrumentRequestCustomer.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UpdateInstrumentRequest.new(
  expiry_month: 6,
  expiry_year: 2025,
  name: John Test,
  account_holder: null,
  customer: null
)
```

