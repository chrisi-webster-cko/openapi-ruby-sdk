# OpenapiClient::PaymentLinksRequestProducts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Descriptive item name |  |
| **quantity** | **Integer** | The item quantity |  |
| **price** | **Integer** | Minor units. Includes tax, excludes discounts. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentLinksRequestProducts.new(
  name: Gold Necklace,
  quantity: 1,
  price: 200
)
```

