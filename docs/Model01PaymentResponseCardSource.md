# OpenapiClient::Model01PaymentResponseCardSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expiry_month** | **Integer** | The expiry month |  |
| **expiry_year** | **Integer** | The expiry year |  |
| **name** | **String** | The cardholder&#39;s name | [optional] |
| **scheme** | **String** | The card scheme | [optional] |
| **last4** | **String** | The last four digits of the card number |  |
| **fingerprint** | **String** | Uniquely identifies this particular card number. You can use this to compare cards across customers. |  |
| **bin** | **String** | The card issuer&#39;s Bank Identification Number (BIN) |  |
| **card_type** | **String** | The card type | [optional] |
| **card_category** | **String** | The card category | [optional] |
| **issuer** | **String** | The name of the card issuer | [optional] |
| **issuer_country** | **String** | The card issuer&#39;s country (&lt;a href&#x3D;\&quot;https://docs.checkout.com/resources/codes/country-codes\&quot; target&#x3D;\&quot;blank\&quot;&gt;two-letter ISO code&lt;/a&gt;) | [optional] |
| **product_id** | **String** | The issuer/card scheme product identifier | [optional] |
| **product_type** | **String** | The issuer/card scheme product type | [optional] |
| **avs_check** | **String** | The Address Verification System check result | [optional] |
| **cvv_check** | **String** | The card verification value (CVV) check result | [optional] |
| **payouts** | **Boolean** | Whether the card supports payouts | [optional] |
| **fast_funds** | **String** | The fast funds eligibility of the card. [Read more](https://docs.checkout.com/payment-actions/pay-out-to-a-card) | [optional] |
| **payment_account_reference** | **String** | A unique reference to the underlying card for network tokens (e.g., Apple Pay, Google Pay) | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Model01PaymentResponseCardSource.new(
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
  product_type: CLASSIC,
  avs_check: S,
  cvv_check: Y,
  payouts: true,
  fast_funds: d,
  payment_account_reference: EUNIX9AX7THOOJIEJ2AP6OOFAHGH4
)
```

