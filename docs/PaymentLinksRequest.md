# OpenapiClient::PaymentLinksRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The payment amount. The exact format &lt;a href&#x3D;\&quot;https://docs.checkout.com/docs/calculating-the-value\&quot; target&#x3D;\&quot;_blank\&quot;&gt;depends on the currency&lt;/a&gt; |  |
| **currency** | **String** | The three-letter &lt;a href&#x3D;\&quot;https://docs.checkout.com/resources/codes/currency-codes\&quot; target&#x3D;\&quot;blank\&quot;&gt;ISO currency code&lt;/a&gt; of the payment.&lt;br&gt;&lt;i&gt;The &#x60;currency&#x60; and &#x60;billing.address.country&#x60; fields determine which payment methods are shown on the payment page&lt;/i&gt;. |  |
| **reference** | **String** | A reference you can later use to identify this payment, such as an order number.&lt;br&gt;&lt;i&gt;Required for PayPal payments&lt;i&gt;. | [optional] |
| **description** | **String** | A description of the payment | [optional] |
| **expires_in** | **Integer** | The time for which the link remains valid, in seconds. | [optional][default to 86400] |
| **customer** | [**PaymentLinksRequestCustomer**](PaymentLinksRequestCustomer.md) |  | [optional] |
| **billing** | [**PaymentLinksRequestBilling**](PaymentLinksRequestBilling.md) |  |  |
| **products** | [**Array&lt;PaymentLinksRequestProducts&gt;**](PaymentLinksRequestProducts.md) | Details about the products in the order | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Allows you to store additional information about the transaction | [optional] |
| **_3ds** | [**PaymentLinksRequest3ds**](PaymentLinksRequest3ds.md) |  | [optional] |
| **risk** | [**RiskRequest**](RiskRequest.md) |  | [optional] |
| **return_url** | **String** | If provided, the success page will include a button that redirects your customer to the provided URL | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentLinksRequest.new(
  amount: 200,
  currency: GBP,
  reference: ORD-123A,
  description: Payment for Gold Necklace,
  expires_in: 604800,
  customer: null,
  billing: null,
  products: null,
  metadata: null,
  _3ds: null,
  risk: null,
  return_url: https://example.com/success
)
```

