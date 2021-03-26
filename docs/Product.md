# OpenapiClient::Product

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **sku** | **String** |  | [optional] |
| **price** | **Integer** |  | [optional] |
| **quantity** | **Integer** |  | [optional] |
| **image** | **String** |  | [optional] |
| **shipping_cost** | **Integer** |  | [optional] |
| **tracking_url** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Product.new(
  name: Tablet 1 gold limited,
  description: Nokia Lumia,
  sku: 1aab2aa,
  price: 100,
  quantity: 1,
  image: http://www.test_Jabari.com/,
  shipping_cost: 10,
  tracking_url: https://www.tracker.com
)
```

