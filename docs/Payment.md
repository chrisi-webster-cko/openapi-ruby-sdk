# OpenapiClient::Payment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Payment unique identifier |  |
| **requested_on** | **Time** | The date/time the payment was requested |  |
| **source** | [**PaymentResponseSource**](PaymentResponseSource.md) | The source of the payment | [optional] |
| **destination** | [**PaymentResponseDestination**](PaymentResponseDestination.md) | The destination of the payment | [optional] |
| **amount** | **Integer** | The original payment amount |  |
| **currency** | **String** | The three-letter &lt;a href&#x3D;\&quot;https://docs.checkout.com/resources/codes/currency-codes\&quot; target&#x3D;\&quot;blank\&quot;&gt;ISO currency code&lt;/a&gt; of the payment |  |
| **payment_type** | **String** | This must be specified for card payments where the cardholder is not present (i.e., recurring or mail order / telephone order) | [optional][default to &#39;Regular&#39;] |
| **reference** | **String** | Your reference for the payment | [optional] |
| **description** | **String** | A description of the payment | [optional] |
| **approved** | **Boolean** | Whether the payment was successful |  |
| **status** | **String** | The status of the payment |  |
| **_3ds** | [**Model3dsData**](Model3dsData.md) | Provides information relating to the processing of 3D Secure payments | [optional] |
| **risk** | [**PaymentRisk**](PaymentRisk.md) |  | [optional] |
| **customer** | [**PaymentCustomer**](PaymentCustomer.md) |  | [optional] |
| **billing_descriptor** | [**BillingDescriptor**](BillingDescriptor.md) |  | [optional] |
| **shipping** | [**PaymentShipping**](PaymentShipping.md) |  | [optional] |
| **payment_ip** | **String** | The IP address used to make the payment | [optional] |
| **recipient** | [**PaymentRecipient**](PaymentRecipient.md) |  | [optional] |
| **metadata** | **Object** | A set of key-value pairs that you can attach to a payment. It can be useful for storing additional information in a structured format | [optional] |
| **eci** | **String** | The final Electronic Commerce Indicator (ECI) security level used to authorize the payment.  Applicable for 3D Secure, digital wallets, and network token payments  | [optional] |
| **scheme_id** | **String** | The scheme transaction identifier  | [optional] |
| **actions** | [**Array&lt;PaymentActionSummary&gt;**](PaymentActionSummary.md) | A summary of the payment&#39;s actions,  returned when a session ID is used to get the payment details  | [optional] |
| **_links** | [**PaymentLinks**](PaymentLinks.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Payment.new(
  id: null,
  requested_on: null,
  source: null,
  destination: null,
  amount: 6540,
  currency: USD,
  payment_type: Recurring,
  reference: ORD-5023-4E89,
  description: Set of 3 masks,
  approved: true,
  status: Authorized,
  _3ds: null,
  risk: null,
  customer: null,
  billing_descriptor: null,
  shipping: null,
  payment_ip: null,
  recipient: null,
  metadata: {&quot;coupon_code&quot;:&quot;NY2018&quot;,&quot;partner_id&quot;:123989},
  eci: 06,
  scheme_id: 488341541494658,
  actions: null,
  _links: null
)
```

