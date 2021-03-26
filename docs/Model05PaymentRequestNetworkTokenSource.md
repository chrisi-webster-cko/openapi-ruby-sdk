# OpenapiClient::Model05PaymentRequestNetworkTokenSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | The network token PAN |  |
| **expiry_month** | **Integer** | The expiry month of the token |  |
| **expiry_year** | **Integer** | The expiry year of the token |  |
| **token_type** | **String** | The type of token |  |
| **cryptogram** | **String** | The Base64 encoded cryptographic identifier (TAVV) used by card schemes to validate the token verification result. Optional if &#x60;previous_payment_id&#x60; is specified and &#x60;3ds.enabled&#x60; is false |  |
| **eci** | **String** | The Electronic Commerce Indicator (ECI) security level associated with the token. Optional if &#x60;previous_payment_id&#x60; is specified and &#x60;3ds.enabled&#x60; is false  |  |
| **stored** | **Boolean** | This must be set to &#x60;true&#x60; for payments that use &lt;a href&#x3D;\&quot;https://docs.checkout.com/quickstart/use-an-existing-card/stored-card-details\&quot; target&#x3D;\&quot;blank\&quot;&gt;stored card details&lt;/a&gt; | [optional][default to false] |
| **name** | **String** | The customer&#39;s name | [optional] |
| **cvv** | **String** | The card verification value/code. 3 digits, except for Amex (4 digits) | [optional] |
| **billing_address** | [**Address**](Address.md) | The customer&#39;s billing address | [optional] |
| **phone** | [**PhoneNumber**](PhoneNumber.md) | The customer&#39;s phone number | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Model05PaymentRequestNetworkTokenSource.new(
  token: 4543474002249996,
  expiry_month: 6,
  expiry_year: 2025,
  token_type: null,
  cryptogram: hv8mUFzPzRZoCAAAAAEQBDMAAAA&#x3D;,
  eci: 05,
  stored: true,
  name: Bruce Wayne,
  cvv: 956,
  billing_address: null,
  phone: null
)
```

