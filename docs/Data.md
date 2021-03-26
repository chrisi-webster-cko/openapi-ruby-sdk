# OpenapiClient::Data

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The payment unique identifier | [optional] |
| **action_id** | **String** | The unique identifier for the action performed against this payment | [optional] |
| **amount** | **Integer** | The payment amount | [optional] |
| **currency** | **String** | The currency in which the payment was made (&lt;a href&#x3D;\&quot;https://docs.checkout.com/resources/codes/currency-codes\&quot; target&#x3D;\&quot;blank\&quot;&gt;three-letter ISO code&lt;/a&gt;) | [optional] |
| **approved** | **Boolean** | Whether the payment request was approved | [optional] |
| **status** | **String** | The status of the payment | [optional] |
| **auth_code** | **String** | The acquirer authorization code, if the payment was authorized. | [optional] |
| **response_code** | **String** | The gateway response code | [optional] |
| **response_summary** | **String** | The gateway response summary | [optional] |
| **_3ds** | [**Model3dsEnrollmentData**](Model3dsEnrollmentData.md) | Provides 3D Secure enrollment status if the payment was downgraded to non-3D Secure | [optional] |
| **flagged** | **Boolean** | Whether the payment was flagged by a risk check | [optional][default to false] |
| **source** | [**PaymentResponseSource**](PaymentResponseSource.md) | The source of the payment | [optional] |
| **customer** | [**PaymentResponseCustomer**](PaymentResponseCustomer.md) | The customer to which this payment is linked | [optional] |
| **processed_on** | **Time** | The date/time the payment was processed | [optional] |
| **reference** | **String** | Your reference for the payment | [optional] |
| **metadata** | **Object** | A set of key-value pairs that you can attach to a payment. It can be useful for storing additional information in a structured format. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Data.new(
  id: null,
  action_id: null,
  amount: 6540,
  currency: USD,
  approved: true,
  status: Authorized,
  auth_code: 643381,
  response_code: 10000,
  response_summary: Approved,
  _3ds: {&quot;downgraded&quot;:true,&quot;enrolled&quot;:&quot;N&quot;},
  flagged: true,
  source: null,
  customer: null,
  processed_on: null,
  reference: ORD-5023-4E89,
  metadata: {&quot;coupon_code&quot;:&quot;NY2018&quot;,&quot;partner_id&quot;:123989}
)
```

