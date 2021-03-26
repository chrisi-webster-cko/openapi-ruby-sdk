# OpenapiClient::PaymentRequestProcessingDlocalPayer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document** | **String** | The customer&#39;s personal identification number. The identification required is country-specific. See the &lt;a href&#x3D;\&quot;https://docs.dlocal.com/api-documentation/payins-api-reference/country-reference#documents\&quot; target&#x3D;\&quot;_blank\&quot;&gt;dLocal documentation&lt;/a&gt; for more information. | [optional] |
| **name** | **String** | The customer&#39;s full name. | [optional] |
| **email** | **String** | The customer&#39;s email address. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestProcessingDlocalPayer.new(
  document: 5305305305,
  name: John Doe,
  email: john.doe@example.com
)
```

