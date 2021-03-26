# OpenapiClient::Model3dsData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **downgraded** | **Boolean** | Inidicates whether this was a 3D Secure payment downgraded to non-3D Secure (when &#x60;attempt_n3d&#x60; is specified) | [optional] |
| **enrolled** | **String** | Indicates the 3D Secure enrollment status of the issuer   * &#x60;Y&#x60; - Issuer enrolled   * &#x60;N&#x60; - Customer not enrolled   * &#x60;U&#x60; - Unknown  | [optional] |
| **signature_valid** | **String** | Verification to ensure the integrity of the response | [optional] |
| **authentication_response** | **String** | Indicates whether or not the cardholder was authenticated   * &#x60;Y&#x60; - Customer authenticated   * &#x60;N&#x60; - Customer not authenticated   * &#x60;A&#x60; - An authentication attempt occurred but could not be completed   * &#x60;U&#x60; - Unable to perform authentication  | [optional] |
| **cryptogram** | **String** | Base64 encoded cryptographic identifier (CAVV) used by the card schemes to validate the integrity of the 3D secure payment data | [optional] |
| **xid** | **String** | Unique identifier for the transaction assigned by the MPI | [optional] |
| **version** | **String** | Indicates the version of 3D Secure that was used for authentication | [optional] |
| **exemption** | **String** | Specifies an exemption reason so that the payment is not processed using 3D Secure authentication | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Model3dsData.new(
  downgraded: false,
  enrolled: Y,
  signature_valid: Y,
  authentication_response: Y,
  cryptogram: hv8mUFzPzRZoCAAAAAEQBDMAAAA&#x3D;,
  xid: MDAwMDAwMDAwMDAwMDAwMzIyNzY&#x3D;,
  version: 2.1.0,
  exemption: low_value
)
```

