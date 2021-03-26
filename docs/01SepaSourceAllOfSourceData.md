# OpenapiClient::01SepaSourceAllOfSourceData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | The account holder&#39;s first name |  |
| **last_name** | **String** | The account holder&#39;s last name |  |
| **account_iban** | **String** | The account IBAN |  |
| **bic** | **String** | The account BIC | [optional] |
| **billing_descriptor** | **String** | The billing descriptor |  |
| **mandate_type** | **String** | The type of mandate |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::01SepaSourceAllOfSourceData.new(
  first_name: Marcus,
  last_name: Barrilius Maximus,
  account_iban: DE25100100101234567893,
  bic: PBNKDEFFXXX,
  billing_descriptor: ExampleCompany.com,
  mandate_type: recurring
)
```

