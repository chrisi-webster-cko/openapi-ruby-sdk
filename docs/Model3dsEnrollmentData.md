# OpenapiClient::Model3dsEnrollmentData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **downgraded** | **Boolean** | Indicates whether this was a 3D Secure payment downgraded to non-3D-Secure (when &#x60;attempt_n3d&#x60; is specified) | [optional] |
| **enrolled** | **String** | Indicates the 3D Secure enrollment status of the issuer   * &#x60;Y&#x60; - Issuer enrolled   * &#x60;N&#x60; - Customer not enrolled   * &#x60;U&#x60; - Unknown  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Model3dsEnrollmentData.new(
  downgraded: false,
  enrolled: Y
)
```

