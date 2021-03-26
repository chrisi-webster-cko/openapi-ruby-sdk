# OpenapiClient::02AchSourceAllOfSourceData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | **String** | The type of Direct Debit account |  |
| **account_number** | **Integer** | The account number of the Direct Debit account |  |
| **routing_number** | **Integer** | The routing number of the Direct Debit account |  |
| **account_holder_name** | **String** | The account holder&#39;s full name |  |
| **billing_descriptor** | **String** | The billing descriptor |  |
| **company_name** | **String** | The name of the company (required for corporate accounts) | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::02AchSourceAllOfSourceData.new(
  account_type: Checking,
  account_number: 4099999992,
  routing_number: 211370545,
  account_holder_name: John Doe,
  billing_descriptor: ExampleCompany.com,
  company_name: Checkout.com
)
```

