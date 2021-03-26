# OpenapiClient::PaymentsReportResponseActions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of action administered to a payment | [optional] |
| **id** | **String** | The unique identifier associated with an action (referred to as a charge ID in the Hub) | [optional] |
| **processed_on** | **Time** | The date on which the action occurred | [optional] |
| **response_code** | **Integer** | The response code of the action (payment request) | [optional] |
| **response_description** | **String** | Further information about the response code | [optional] |
| **breakdown** | [**Array&lt;PaymentsReportResponseBreakdown&gt;**](PaymentsReportResponseBreakdown.md) | The breakdown object | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentsReportResponseActions.new(
  type: Authorization,
  id: act_nezg6bx2k22utmk4xm5s2ughxi,
  processed_on: null,
  response_code: 10000,
  response_description: Approved,
  breakdown: null
)
```

