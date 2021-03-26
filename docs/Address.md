# OpenapiClient::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line1** | **String** | The first line of the address | [optional] |
| **address_line2** | **String** | The second line of the address | [optional] |
| **city** | **String** | The address city | [optional] |
| **state** | **String** | The address state | [optional] |
| **zip** | **String** | The address zip/postal code | [optional] |
| **country** | **String** | The two-letter &lt;a href&#x3D;\&quot;https://docs.checkout.com/resources/codes/country-codes\&quot; target&#x3D;\&quot;blank\&quot;&gt;ISO country code&lt;/a&gt; of the address | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Address.new(
  address_line1: Checkout.com,
  address_line2: 90 Tottenham Court Road,
  city: London,
  state: London,
  zip: W1T 4TJ,
  country: GB
)
```

