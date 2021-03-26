# OpenapiClient::Model03PaymentRequestCardDestination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | The card number |  |
| **expiry_month** | **Integer** | The expiry month of the card |  |
| **expiry_year** | **Integer** | The expiry year of the card |  |
| **first_name** | **String** | The payout destination owner&#39;s first name |  |
| **last_name** | **String** | The payout destination owner&#39;s last name |  |
| **name** | **String** | The cardholder&#39;s name | [optional] |
| **billing_address** | [**Address**](Address.md) | The payout destination owner&#39;s billing address | [optional] |
| **phone** | [**PhoneNumber**](PhoneNumber.md) | The payout destination owner&#39;s phone number | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Model03PaymentRequestCardDestination.new(
  number: 4543474002249996,
  expiry_month: 6,
  expiry_year: 2025,
  first_name: John,
  last_name: Smith,
  name: Bruce Wayne,
  billing_address: null,
  phone: null
)
```

