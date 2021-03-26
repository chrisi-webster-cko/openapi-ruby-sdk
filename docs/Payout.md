# OpenapiClient::Payout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination** | [**PaymentRequestDestination**](PaymentRequestDestination.md) |  | [optional] |
| **amount** | **Integer** | The payment amount. The exact format &lt;a href&#x3D;\&quot;https://docs.checkout.com/resources/calculating-the-value\&quot; target&#x3D;\&quot;blank\&quot;&gt;depends on the currency&lt;/a&gt;. Omit the amount or provide a value of &#x60;0&#x60; to perform a card verification.  | [optional] |
| **currency** | **String** | The three-letter &lt;a href&#x3D;\&quot;https://docs.checkout.com/resources/codes/currency-codes\&quot; target&#x3D;\&quot;blank\&quot;&gt;ISO currency code&lt;/a&gt;  |  |
| **payment_type** | **String** | This must be specified for card payments where the cardholder is not present (i.e., recurring or mail order / telephone order) | [optional][default to &#39;Regular&#39;] |
| **reference** | **String** | A reference you can later use to identify this payment, such as an order number | [optional] |
| **description** | **String** | A description of the payment | [optional] |
| **capture** | **Boolean** | Whether to capture the payment (if applicable) | [optional][default to true] |
| **capture_on** | **Time** | A timestamp (ISO 8601 code) that determines when the payment should be captured. Providing this field will automatically set &#x60;capture&#x60; to true  | [optional] |
| **customer** | [**PaymentRequestCustomer**](PaymentRequestCustomer.md) |  | [optional] |
| **billing_descriptor** | [**BillingDescriptor**](BillingDescriptor.md) |  | [optional] |
| **shipping** | [**PaymentRequestShipping**](PaymentRequestShipping.md) |  | [optional] |
| **_3ds** | [**Model3dsRequest**](Model3dsRequest.md) |  | [optional] |
| **previous_payment_id** | **String** | For payments that use &lt;a href&#x3D;\&quot;https://docs.checkout.com/quickstart/use-an-existing-card/stored-card-details\&quot; target&#x3D;\&quot;blank\&quot;&gt;stored card details&lt;/a&gt;, such as recurring payments â€“ an existing payment identifier from the recurring series or the Scheme Transaction Id  | [optional] |
| **risk** | [**RiskRequest**](RiskRequest.md) |  | [optional] |
| **success_url** | **String** | For redirect payment methods, this overrides the default success redirect URL configured on your account | [optional] |
| **failure_url** | **String** | For redirect payment methods, this overrides the default failure redirect URL configured on your account | [optional] |
| **payment_ip** | **String** | The IP address used to make the payment. Required for some risk checks | [optional] |
| **recipient** | [**PaymentRecipient**](PaymentRecipient.md) |  | [optional] |
| **processing** | [**PayoutProcessing**](PayoutProcessing.md) |  | [optional] |
| **metadata** | **Object** | Allows you to store additional information about a transaction with custom fields and up to five user-defined fields (&#x60;udf1&#x60; to &#x60;udf5&#x60;), which can be used for reporting purposes. &#x60;udf1&#x60; is also used for some of our risk rules. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Payout.new(
  destination: null,
  amount: 6540,
  currency: USD,
  payment_type: Recurring,
  reference: ORD-5023-4E89,
  description: Set of 3 masks,
  capture: true,
  capture_on: null,
  customer: null,
  billing_descriptor: null,
  shipping: null,
  _3ds: null,
  previous_payment_id: pay_fun26akvvjjerahhctaq2uzhu4,
  risk: null,
  success_url: http://example.com/payments/success,
  failure_url: http://example.com/payments/fail,
  payment_ip: null,
  recipient: null,
  processing: null,
  metadata: {&quot;coupon_code&quot;:&quot;NY2018&quot;,&quot;partner_id&quot;:123989}
)
```

