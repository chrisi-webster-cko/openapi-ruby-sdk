# OpenapiClient::PaymentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The payment&#39;s unique identifier |  |
| **action_id** | **String** | The unique identifier for the action performed against this payment |  |
| **amount** | **Integer** | The payment amount |  |
| **currency** | **String** | The three-letter &lt;a href&#x3D;\&quot;https://docs.checkout.com/resources/codes/currency-codes\&quot; target&#x3D;\&quot;blank\&quot;&gt;ISO currency code&lt;/a&gt; of the payment |  |
| **approved** | **Boolean** | Whether or not the authorization or capture was successful |  |
| **status** | **String** | The status of the payment |  |
| **auth_code** | **String** | The acquirer authorization code if the payment was authorized | [optional] |
| **response_code** | **String** | The Gateway response code |  |
| **response_summary** | **String** | The Gateway response summary | [optional] |
| **_3ds** | [**Model3dsEnrollmentData**](Model3dsEnrollmentData.md) | Provides 3D Secure enrollment status if the payment was downgraded to non-3D Secure | [optional] |
| **risk** | [**PaymentResponseRisk**](PaymentResponseRisk.md) |  | [optional] |
| **source** | [**PaymentResponseSource**](PaymentResponseSource.md) | The source of the payment | [optional] |
| **customer** | [**PaymentResponseCustomer**](PaymentResponseCustomer.md) | The customer associated with the payment, if provided in the request | [optional] |
| **processed_on** | **Time** | The date/time the payment was processed |  |
| **reference** | **String** | Your reference for the payment | [optional] |
| **processing** | [**PaymentResponseProcessing**](PaymentResponseProcessing.md) |  | [optional] |
| **eci** | **String** | The final Electronic Commerce Indicator (ECI) security level used to authorize the payment. Applicable for 3D Secure, digital wallet, and network token payments | [optional] |
| **scheme_id** | **String** | The scheme transaction identifier | [optional] |
| **_links** | [**PaymentResponseLinks**](PaymentResponseLinks.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentResponse.new(
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
  risk: null,
  source: null,
  customer: null,
  processed_on: null,
  reference: ORD-5023-4E89,
  processing: null,
  eci: 06,
  scheme_id: 489341065491658,
  _links: null
)
```

