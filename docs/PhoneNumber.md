# OpenapiClient::PhoneNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | The international &lt;a href&#x3D;\&quot;https://docs.checkout.com/resources/codes/country-codes\&quot; target&#x3D;\&quot;blank\&quot;&gt;country calling code&lt;/a&gt;. Required for some risk checks | [optional] |
| **number** | **String** | The phone number | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PhoneNumber.new(
  country_code: +1,
  number: 4155552671
)
```

