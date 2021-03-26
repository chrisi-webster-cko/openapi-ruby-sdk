# OpenapiClient::RetrieveInstrumentResponseAccountHolder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_address** | [**Address**](Address.md) | The billing address of the account holder | [optional] |
| **phone** | [**Phone**](Phone.md) | The phone number of the account holder | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RetrieveInstrumentResponseAccountHolder.new(
  billing_address: null,
  phone: null
)
```

