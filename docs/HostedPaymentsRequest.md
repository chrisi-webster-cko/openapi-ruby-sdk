# OpenapiClient::HostedPaymentsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The payment amount. The exact format &lt;a href&#x3D;\&quot;https://docs.checkout.com/docs/calculating-the-value\&quot; target&#x3D;\&quot;_blank\&quot;&gt;depends on the currency&lt;/a&gt; | [optional] |
| **currency** | **String** | The three-letter &lt;a href&#x3D;\&quot;https://docs.checkout.com/resources/codes/currency-codes\&quot; target&#x3D;\&quot;blank\&quot;&gt;ISO currency code&lt;/a&gt; of the payment |  |
| **reference** | **String** | A reference you can later use to identify this payment, such as an order number | [optional] |
| **description** | **String** | A description of the payment | [optional] |
| **customer** | [**HostedPaymentsRequestCustomer**](HostedPaymentsRequestCustomer.md) |  | [optional] |
| **billing** | [**HostedPaymentsRequestBilling**](HostedPaymentsRequestBilling.md) |  |  |
| **products** | [**Array&lt;HostedPaymentsRequestProducts&gt;**](HostedPaymentsRequestProducts.md) | Details about the products in the order | [optional] |
| **risk** | [**RiskRequest**](RiskRequest.md) |  | [optional] |
| **success_url** | **String** | For redirect payment methods, this overrides the default success redirect URL configured on your account |  |
| **cancel_url** | **String** | The URL to which the customer should be directed if they cancel the payment |  |
| **failure_url** | **String** | For redirect payment methods, this overrides the default failure redirect URL configured on your account |  |
| **metadata** | **Hash&lt;String, Object&gt;** | Allows you to store additional information about the transaction | [optional] |
| **_3ds** | [**HostedPaymentsRequest3ds**](HostedPaymentsRequest3ds.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::HostedPaymentsRequest.new(
  amount: 1000,
  currency: GBP,
  reference: ORD-123A,
  description: Payment for Gold Necklace,
  customer: null,
  billing: null,
  products: null,
  risk: null,
  success_url: https://example.com/payments/success,
  cancel_url: https://example.com/payments/cancel,
  failure_url: https://example.com/payments/failure,
  metadata: null,
  _3ds: null
)
```

