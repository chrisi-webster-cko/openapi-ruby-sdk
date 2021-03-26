# OpenapiClient::03PaymentRequestCardSourceAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | The card number (without separators) |  |
| **expiry_month** | **Integer** | The expiry month of the card |  |
| **expiry_year** | **Integer** | The expiry year of the card |  |
| **name** | **String** | The name of the cardholder | [optional] |
| **cvv** | **String** | The card verification value/code. 3 digits, except for Amex (4 digits) | [optional] |
| **stored** | **Boolean** | This must be set to &#x60;true&#x60; for payments that use &lt;a href&#x3D;\&quot;https://docs.checkout.com/quickstart/use-an-existing-card/stored-card-details\&quot; target&#x3D;\&quot;blank\&quot;&gt;stored card details&lt;/a&gt; | [optional][default to false] |
| **billing_address** | [**Address**](Address.md) | The billing address of the cardholder | [optional] |
| **phone** | [**PhoneNumber**](PhoneNumber.md) | The phone number of the cardholder | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::03PaymentRequestCardSourceAllOf.new(
  number: 4543474002249996,
  expiry_month: 6,
  expiry_year: 2025,
  name: Bruce Wayne,
  cvv: 956,
  stored: true,
  billing_address: null,
  phone: null
)
```

