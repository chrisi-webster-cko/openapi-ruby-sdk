# OpenapiClient::PaymentRequestKlarnaSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization_token** | **String** | Klarna authentication token, obtained by the merchant during client transaction authorization. |  |
| **locale** | **String** | RFC 1766 customer&#39;s locale. Optional, default taken from business settings. |  |
| **purchase_country** | **String** | ISO 3166 alpha-2 purchase country. Optional, default taken from business settings. |  |
| **auto_capture** | **Boolean** | Allow merchant to trigger auto capturing. | [optional] |
| **billing_address** | **Object** | Customer&#39;s billing address.   This object is passed directly to Klarna as &#x60;billing_address&#x60;,  so for the object definition use the [Klarna documentation](https://developers.klarna.com/api/#payments-api__create-a-new-order__billing_address). |  |
| **shipping_address** | **Object** | Customer&#39;s shipping address.   This object is passed directly to Klarna as &#x60;shipping_address&#x60;,  so for the object definition use the [Klarna documentation](https://developers.klarna.com/api/#payments-api__create-a-new-order__shipping_address). | [optional] |
| **tax_amount** | **Integer** | Total tax amount of the order. |  |
| **products** | **Array&lt;Object&gt;** | The applicable order lines.   This object is passed directly to Klarna as &#x60;order_lines&#x60;,  so for the object definition use the [Klarna documentation](https://developers.klarna.com/api/#payments-api__create-a-new-order__order_lines). |  |
| **customer** | **Object** | Information about the liable customer of the order.   This object is passed directly to Klarna as &#x60;customer&#x60;,  so for the object definition use the [Klarna documentation](https://developers.klarna.com/api/#payments-api__create-a-new-order__customer). | [optional] |
| **merchant_reference1** | **String** | Used for storing merchant&#39;s internal order number or other reference.  If set, will be shown on the confirmation page as \&quot;order number\&quot; (max 255 characters). | [optional] |
| **merchant_reference2** | **String** | Used for storing merchant&#39;s internal order number or other reference (max 255 characters). | [optional] |
| **merchant_data** | **String** | Pass through field (max 1024 characters). | [optional] |
| **attachment** | **Object** | Additional purchase information required for some industries.   This object is passed directly to Klarna as &#x60;attachment&#x60;,  so for the object definition use the [Klarna documentation](https://developers.klarna.com/api/#payments-api__create-a-new-order__attachment). | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestKlarnaSource.new(
  authorization_token: null,
  locale: null,
  purchase_country: null,
  auto_capture: null,
  billing_address: null,
  shipping_address: null,
  tax_amount: null,
  products: null,
  customer: null,
  merchant_reference1: null,
  merchant_reference2: null,
  merchant_data: null,
  attachment: null
)
```

