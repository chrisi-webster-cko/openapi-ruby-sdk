# OpenapiClient::Model01SepaAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line1** | **String** | The first line of the address |  |
| **address_line2** | **String** | The second line of the address | [optional] |
| **city** | **String** | The address city |  |
| **state** | **String** | The address state | [optional] |
| **zip** | **String** | The address zip/postal code |  |
| **country** | **String** | The two-letter &lt;a href&#x3D;\&quot;https://docs.checkout.com/docs/country-codes\&quot; target&#x3D;\&quot;blank\&quot;&gt;ISO country code&lt;/a&gt; of the address |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Model01SepaAddress.new(
  address_line1: Brandenburger Tor,
  address_line2: Pariser Platz,
  city: Berlin,
  state: Berlin,
  zip: 10117,
  country: DE
)
```

