# OpenapiClient::Model01PaymentResponseCardDestination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expiry_month** | **Integer** | The expiry month |  |
| **expiry_year** | **Integer** | The expiry year |  |
| **name** | **String** | The cardholder&#39;s name | [optional] |
| **scheme** | **String** | The card scheme | [optional] |
| **last4** | **String** | The last four digits of the card number |  |
| **fingerprint** | **String** | Uniquely identifies this particular card number. You can use this to compare cards across customers |  |
| **bin** | **String** | The card issuer&#39;s Bank Identification Number (BIN) |  |
| **card_type** | **String** | The card type | [optional] |
| **card_category** | **String** | The card category | [optional] |
| **issuer** | **String** | The name of the card issuer | [optional] |
| **issuer_country** | **String** | The card issuer&#39;s country (&lt;a href&#x3D;\&quot;https://docs.checkout.com/docs/country-codes\&quot; target&#x3D;\&quot;blank\&quot;&gt;two-letter ISO code&lt;/a&gt;) | [optional] |
| **product_id** | **String** | The issuer/card scheme product identifier | [optional] |
| **product_type** | **String** | The issuer/card scheme product type | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Model01PaymentResponseCardDestination.new(
  expiry_month: 6,
  expiry_year: 2025,
  name: Bruce Wayne,
  scheme: VISA,
  last4: 9996,
  fingerprint: F639CAB2745BEE4140BF86DF6B6D6,
  bin: 454347,
  card_type: Credit,
  card_category: Consumer,
  issuer: GOTHAM STATE BANK,
  issuer_country: US,
  product_id: F,
  product_type: CLASSIC
)
```

