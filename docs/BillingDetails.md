# OpenapiClient::BillingDetails

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

instance = OpenapiClient::BillingDetails.new(
  address_line_1: 372 Weimann Lane,
  address_line_2: Rolfson Alley,
  post_code: ew1 7zb,
  country: SJ,
  city: North Benedicthaven,
  state: Georgia,
  phone: null
)
```

