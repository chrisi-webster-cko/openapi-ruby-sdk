# OpenapiClient::CustomerPaymentPlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **customer_plan_id** | **String** |  | [optional] |
| **card_id** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **plan_track_id** | **String** |  | [optional] |
| **auto_cap_time** | **String** |  | [optional] |
| **value** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **cycle** | **String** |  | [optional] |
| **recurring_count** | **Integer** |  | [optional] |
| **recurring_count_left** | **Integer** |  | [optional] |
| **total_collected_value** | **Integer** |  | [optional] |
| **total_collected_count** | **Integer** |  | [optional] |
| **current_recurring_status** | **Integer** |  | [optional] |
| **start_date** | **String** |  | [optional] |
| **previous_recurring_date** | **String** |  | [optional] |
| **next_recurring_date** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CustomerPaymentPlan.new(
  id: null,
  customer_plan_id: null,
  card_id: null,
  customer_id: null,
  name: null,
  plan_track_id: null,
  auto_cap_time: null,
  value: null,
  currency: null,
  cycle: null,
  recurring_count: null,
  recurring_count_left: null,
  total_collected_value: null,
  total_collected_count: null,
  current_recurring_status: null,
  start_date: null,
  previous_recurring_date: null,
  next_recurring_date: null
)
```

