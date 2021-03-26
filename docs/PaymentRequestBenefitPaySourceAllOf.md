# OpenapiClient::PaymentRequestBenefitPaySourceAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_type** | **String** | Payment method integration type (platform wise)   * web:     Payment requested for a purchase via a web browser.     In case of successful creation, the request will return a QR code string and a transaction     reference number (of the newly created corresponding BenefitPay transaction).     The QR code string should be used to generate a QR code, which then should be displayed     to the user for scanning using the BenefitPay app.   * mobile:     Payment requested for a purchase via an iOS / Android app.     In case of successful creation, the request will return a transaction reference number.     The reference number should be used to request a transaction creation via the Android SDK     or the iOS SDK of BenefitPay. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestBenefitPaySourceAllOf.new(
  integration_type: null
)
```

