# OpenapiClient::Card

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **expiry_month** | **String** |  | [optional] |
| **expiry_year** | **String** |  | [optional] |
| **billing_details** | [**BillingDetails**](BillingDetails.md) |  | [optional] |
| **id** | **String** |  | [optional] |
| **last4** | **String** |  | [optional] |
| **payment_method** | **String** |  | [optional] |
| **fingerprint** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **cvv_check** | **String** |  | [optional] |
| **avs_check** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Card.new(
  customer_id: cust_7508EA38E86A4569AF12E483519E332D,
  expiry_month: 06,
  expiry_year: 2018,
  billing_details: null,
  id: card_D44D7F4CCC6348698717CD80072808B0,
  last4: 424242******4242,
  payment_method: VISA,
  fingerprint: f639cab2745bee4140bf86df6b6d6e255c5945aac3788d923fa047ea4c208622,
  name: Test Customer,
  cvv_check: Y,
  avs_check: S
)
```

