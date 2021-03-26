# OpenapiClient::PaymentAcceptedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The payment&#39;s unique identifier | [readonly] |
| **status** | **String** | The status of the payment |  |
| **reference** | **String** | Your reference for the payment request | [optional] |
| **customer** | [**PaymentResponseCustomer**](PaymentResponseCustomer.md) | The customer associated with the payment, if provided in the request | [optional] |
| **_3ds** | [**Model3dsEnrollmentData**](Model3dsEnrollmentData.md) | Provides 3D Secure enrollment status | [optional] |
| **_links** | [**PaymentAcceptedResponseLinks**](PaymentAcceptedResponseLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentAcceptedResponse.new(
  id: null,
  status: null,
  reference: ORD-5023-4E89,
  customer: null,
  _3ds: null,
  _links: null
)
```

