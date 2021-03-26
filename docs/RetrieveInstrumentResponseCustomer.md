# OpenapiClient::RetrieveInstrumentResponseCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The identifier of an existing customer | [optional] |
| **email** | **String** | The email address of the customer | [optional] |
| **name** | **String** | The name address of the customer | [optional] |
| **default** | **String** | True, if this instrument is set as the default for the customer | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RetrieveInstrumentResponseCustomer.new(
  id: cus_gajmdgunwwlehbctuj6a3sifpm,
  email: JohnTest@test.com,
  name: John Test,
  default: true
)
```

