# OpenapiClient::Evidence

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proof_of_delivery_or_service_file** | **String** | The file ID of the file you uploaded as a proof of delivery or service | [optional] |
| **proof_of_delivery_or_service_text** | **String** | A brief text description of the file. You can also use this field to provide a link | [optional] |
| **proof_of_delivery_or_service_date_text** | **String** | The date on which the item was delivered. You can also use this field to provide a link | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Evidence.new(
  proof_of_delivery_or_service_file: file_jmbfgkjromvcrn9t4qu4,
  proof_of_delivery_or_service_text: Delivery slip signed by the customer,
  proof_of_delivery_or_service_date_text: Merchandise was delivered on 2018-12-30
)
```

