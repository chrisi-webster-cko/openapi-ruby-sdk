# OpenapiClient::PayoutProcessingSenderInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference** | **String** | Merchant&#39;s unique customer ID.&lt;br&gt; &lt;i&gt;Alphanumeric characters only&lt;/i&gt;. | [optional] |
| **account_number** | **String** | The account number. | [optional] |
| **first_name** | **String** | The first name. | [optional] |
| **last_name** | **String** | The last name. | [optional] |
| **address** | **String** | The address. | [optional] |
| **city** | **String** | The address city. | [optional] |
| **state** | **String** | The state or province of the address country (&lt;a href&#x3D;\&quot;https://en.wikipedia.org/wiki/ISO_3166-2\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ISO 3166-2 code&lt;/a&gt; of up to three alphanumeric characters). | [optional] |
| **country** | **String** | The address country (two-letter &lt;a href&#x3D;\&quot;https://docs.checkout.com/resources/codes/country-codes\&quot; target&#x3D;\&quot;_blank\&quot;&gt;ISO country code&lt;/a&gt;). | [optional] |
| **postal_code** | **String** | The post/zip code.&lt;br&gt;&lt;i&gt;Only required for Mastercard transactions&lt;/i&gt;. | [optional] |
| **source_of_funds** | **String** | The source of the funds. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PayoutProcessingSenderInformation.new(
  reference: null,
  account_number: null,
  first_name: null,
  last_name: null,
  address: null,
  city: null,
  state: null,
  country: null,
  postal_code: null,
  source_of_funds: null
)
```

