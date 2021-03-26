# OpenapiClient::InstrumentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the payment source or destination that can be used later for payments |  |
| **type** | **String** | The underlying instrument type (for instruments created from Checkout.com tokens, this will reflect the type of instrument that was tokenized) |  |
| **expiry_month** | **Integer** | The expiry month |  |
| **expiry_year** | **Integer** | The expiry year |  |
| **scheme** | **String** | The card scheme | [optional] |
| **last4** | **String** | The last four digits of the card number |  |
| **bin** | **String** | The card issuer&#39;s bank identification number (BIN) |  |
| **card_type** | **String** | The card type | [optional] |
| **card_category** | **String** | The card category | [optional] |
| **issuer** | **String** | The name of the card issuer | [optional] |
| **issuer_country** | **String** | The card issuer&#39;s country (&lt;a href&#x3D;\&quot;https://docs.checkout.com/resources/codes/country-codes\&quot; target&#x3D;\&quot;blank\&quot;&gt;two-letter ISO code&lt;/a&gt;) | [optional] |
| **product_id** | **String** | The issuer/card scheme product identifier | [optional] |
| **product_type** | **String** | The issuer/card scheme product type | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InstrumentResponse.new(
  id: src_wmlfc3zyhqzehihu7giusaaawu,
  type: card,
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

