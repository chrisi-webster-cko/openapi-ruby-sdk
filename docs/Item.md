# OpenapiClient::Item

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sku** | **String** | The stock-keeping unit (SKU) identifier of the item | [optional] |
| **name** | **String** | The name of the item or product | [optional] |
| **description** | **String** | A description of the item or product | [optional] |
| **image_url** | **String** | The URL of an image of the item or product | [optional] |
| **price** | **Float** | The unit price of the item or product in the minor currency unit | [optional] |
| **quantity** | **Float** | The number of the items purchased | [optional] |
| **shipping_cost** | **Float** | The shipping cost of the item | [optional] |
| **shipping_tracking_url** | **String** | A URL to track the shipping status of the item | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Item.new(
  sku: 858818ac,
  name: Kevlar batterang,
  description: The fastest, hardest batterang known to man,
  image_url: http://example.com/batterang.jpg,
  price: 34.5,
  quantity: 2,
  shipping_cost: 2.99,
  shipping_tracking_url: http://www.dhl.co.uk/en/express/tracking.html?AWB&#x3D;41f280bbe12cd787b47c&amp;brand&#x3D;DHL
)
```

