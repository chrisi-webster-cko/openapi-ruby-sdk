# OpenapiClient::UpdateCustomerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The email address of the customer | [optional] |
| **name** | **String** | The name of the customer | [optional] |
| **default** | **String** | The instrument ID for this customerâ€™s default instrument | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UpdateCustomerRequest.new(
  email: JohnTest@test.com,
  name: John Test,
  default: src_imu3wifxfvlebpqqq5usjrze6y
)
```

