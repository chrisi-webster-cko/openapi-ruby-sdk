# OpenapiClient::Model03CardTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | The card number |  |
| **expiry_month** | **Integer** | The expiry month of the card |  |
| **expiry_year** | **Integer** | The expiry year of the card |  |
| **name** | **String** | The cardholder&#39;s name | [optional] |
| **cvv** | **String** | The card verification value/code. 3 digits, except for Amex (4 digits) | [optional] |
| **billing_address** | [**Address**](Address.md) | The payment source owner&#39;s billing address | [optional] |
| **phone** | [**PhoneNumber**](PhoneNumber.md) | The payment source owner&#39;s phone number | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Model03CardTokenRequest.new(
  number: 4543474002249996,
  expiry_month: 6,
  expiry_year: 2025,
  name: Bruce Wayne,
  cvv: 956,
  billing_address: null,
  phone: null
)
```

