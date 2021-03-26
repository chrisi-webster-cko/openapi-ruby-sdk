# OpenapiClient::PaymentRequestFawrySourceAllOfProducts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | The id of the product. |  |
| **quantity** | **Integer** | The quantity of the product. |  |
| **price** | **Integer** | The price of the item.  Expressed using Checkout.com&#39;s standard rules for calculating payment values. |  |
| **description** | **String** | The description of the product. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestFawrySourceAllOfProducts.new(
  product_id: null,
  quantity: null,
  price: null,
  description: null
)
```

