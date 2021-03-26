# OpenapiClient::PaymentRequestFawrySource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | The payment description. |  |
| **customer_profile_id** | **String** | The customer&#39;s id within merchant&#39;s system. | [optional] |
| **customer_email** | **String** | The customer&#39;s email address. |  |
| **customer_mobile** | **String** | The customer&#39;s mobile phone number. |  |
| **expires_on** | **String** | The date on which the payment expires. | [optional] |
| **products** | [**Array&lt;PaymentRequestFawrySourceAllOfProducts&gt;**](PaymentRequestFawrySourceAllOfProducts.md) | List of Products |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestFawrySource.new(
  description: null,
  customer_profile_id: null,
  customer_email: null,
  customer_mobile: null,
  expires_on: null,
  products: null
)
```

