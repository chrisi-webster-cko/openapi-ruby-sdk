# OpenapiClient::PaymentRequestQPaySource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quantity** | **Integer** | A numeric value greater than zero represents the quantity of purchased Item. The value is used for display purposes only and does not affect the total amount of the payment. The minimum allowed value is 1. | [optional] |
| **description** | **String** | Alphanumeric string containing a description of the payment order. Note: The maximum allowed length of this property is 255 characters after UTF-8 URL encoding. |  |
| **language** | **String** | Alphabetic value representing the language of the interface displayed to customer at merchant site, and used as language for the payment description parameter.  PG will use this value to display the interface supporting selected language to the customer during the payment process.  Supported values are: En, Ar. The default value is En. | [optional] |
| **national_id** | **String** | Alphanumeric value representing the national id of the customer performing the transaction. The maximum allowed length of this property is 32. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestQPaySource.new(
  quantity: null,
  description: null,
  language: null,
  national_id: null
)
```

