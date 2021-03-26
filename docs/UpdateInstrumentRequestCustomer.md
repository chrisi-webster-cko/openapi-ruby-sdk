# OpenapiClient::UpdateInstrumentRequestCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The identifier of an existing customer | [optional] |
| **default** | **Boolean** | If true, sets this instrument as the default for the customer (if false, no changes are actioned) | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UpdateInstrumentRequestCustomer.new(
  id: cus_gajmdgunwwlehbctuj6a3sifpm,
  default: true
)
```

