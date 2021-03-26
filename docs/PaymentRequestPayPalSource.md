# OpenapiClient::PaymentRequestPayPalSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_number** | **String** | PayPal recommends using this field to associate transactions with your internal tracking IDs or invoice numbers;  populating the invoice ID field will help you pull transaction information at a later date using only your internal ID.  |  |
| **recipient_name** | **String** | Person&#39;s name associated with the shipping address.  | [optional] |
| **logo_url** | **String** | A URL to your logo. Use a graphics format, such as .gif, .jpg, or .png.  The logo appears at the top of the cart review area. Host the image on a secure (https) server. Character limit: 127 single-byte alphanumeric characters. Width: 190px Height: 60px  | [optional] |
| **stc** | **Hash&lt;String, String&gt;** | These details are used by Paypal to perform a pre-transaction risk management evaluation. The property names should be the same one as agreed between the merchant and PayPal.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestPayPalSource.new(
  invoice_number: null,
  recipient_name: null,
  logo_url: null,
  stc: {&quot;ota_type&quot;:&quot;airline&quot;,&quot;ota_start_city&quot;:&quot;SKG&quot;}
)
```

