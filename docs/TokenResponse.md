# OpenapiClient::TokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of card details to be tokenized |  |
| **token** | **String** | The reference token |  |
| **expires_on** | **Time** | The date/time the token will expire |  |
| **expiry_month** | **Integer** | The expiry month |  |
| **expiry_year** | **Integer** | expiry year |  |
| **scheme** | **String** | The card scheme | [optional] |
| **last4** | **String** | The last four digits of the card number |  |
| **bin** | **String** | The card issuer BIN |  |
| **card_type** | **String** | The card type | [optional] |
| **card_category** | **String** | The card category | [optional] |
| **issuer** | **String** | The name of the card issuer | [optional] |
| **issuer_country** | **String** | The card issuer country ISO-2 code | [optional] |
| **product_id** | **String** | The issuer/card scheme product identifier | [optional] |
| **product_type** | **String** | The issuer/card scheme product type | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TokenResponse.new(
  type: card,
  token: tok_ubfj2q76miwundwlk72vxt2i7q,
  expires_on: null,
  expiry_month: 6,
  expiry_year: 2025,
  scheme: VISA,
  last4: 9996,
  bin: 454347,
  card_type: Credit,
  card_category: Consumer,
  issuer: GOTHAM STATE BANK,
  issuer_country: US,
  product_id: F,
  product_type: CLASSIC
)
```

