# OpenapiClient::PaymentRequestIdealSourceAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the product(s) or services being paid for.  This field must not contain characters that can lead to problems (for example those occurring in HTML editing codes).  To prevent any possible errors most iDEAL systems will reject any description that contains HTML-tags and such other code.  |  |
| **bic** | **String** | BIC (8 or 11-digits). In iDEAL-lingo this is also called issuerID |  |
| **language** | **String** | This field enables the Issuer&#39;s site to select the Consumer&#39;s preferred language  (e.g. the language selected on the Merchant&#39;s site), if the Issuer&#39;s site supports this.  Code list in accordance with ISO 639-1. (Dutch &#x3D; &#39;nl&#39;, English &#x3D; &#39;en&#39;).  If a non-supported or non-existing language is entered the standard language of the Issuer is used. It is recommended to use &#39;nl&#39; by default since not all Issuers support other languages.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestIdealSourceAllOf.new(
  description: null,
  bic: null,
  language: null
)
```

