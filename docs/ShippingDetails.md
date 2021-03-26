# OpenapiClient::ShippingDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line_1** | **String** |  | [optional] |
| **address_line_2** | **String** |  | [optional] |
| **post_code** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **phone** | [**Phone**](Phone.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ShippingDetails.new(
  address_line_1: 333 Cormier Bypass,
  address_line_2: Rolfson Alley,
  post_code: BR3 6TK,
  country: GB,
  city: Bromley,
  state: Greater London,
  phone: null
)
```

