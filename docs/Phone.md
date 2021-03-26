# OpenapiClient::Phone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | The international &lt;a href&#x3D;\&quot;https://docs.checkout.com/resources/codes/country-codes\&quot; target&#x3D;\&quot;blank\&quot;&gt;country calling code&lt;/a&gt; | [optional] |
| **number** | **String** | The phone number | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Phone.new(
  country_code: 975,
  number: 174217187
)
```

