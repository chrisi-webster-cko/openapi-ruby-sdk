# OpenapiClient::HostedPaymentsRequestProducts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Descriptive item name |  |
| **quantity** | **Integer** | The item quantity. Non-negative |  |
| **price** | **Integer** | Minor units. Includes tax, excludes discounts. The exact format &lt;a href&#x3D;\&quot;https://docs.checkout.com/docs/calculating-the-value\&quot; target&#x3D;\&quot;_blank\&quot;&gt;depends on the currency&lt;/a&gt; |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::HostedPaymentsRequestProducts.new(
  name: Gold Necklace,
  quantity: 1,
  price: 1000
)
```

