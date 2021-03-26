# OpenapiClient::Model3dsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether to process this payment as a 3D Secure payment | [optional][default to false] |
| **attempt_n3d** | **Boolean** | Determines whether to attempt a 3D Secure payment as non-3D Secure should the card issuer not be enrolled  | [optional][default to false] |
| **eci** | **String** | The Electronic Commerce Indicator security level associated with the 3D Secure enrollment result. Required if using a third-party merchant plug-in (MPI) | [optional] |
| **cryptogram** | **String** | A Base64 encoded cryptographic identifier (CAVV) used by the card schemes to validate the cardholder authentication result (3D Secure). Required if using an external MPI | [optional] |
| **xid** | **String** | The 3D Secure transaction identifier. Required if using an external MPI with 3D Secure 2.X.X and a Mastercard card, or with 3D Secure 1.X.X for any supported card scheme | [optional] |
| **version** | **String** | Indicates the version of 3D Secure that was used for authentication. Defaults to 1.0.0 if not provided | [optional] |
| **exemption** | **String** | Specifies an exemption reason so that the payment is not processed using 3D Secure authentication. Learn more about exemptions in our &lt;a href&#x3D;\&quot;https://docs.checkout.com/risk-management/sca-compliance-guide#SCAcomplianceguide-PossibleSCAexemptionsexemptions\&quot;&gt;SCA compliance guide&lt;/a&gt;. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Model3dsRequest.new(
  enabled: true,
  attempt_n3d: true,
  eci: 05,
  cryptogram: AgAAAAAAAIR8CQrXcIhbQAAAAAA&#x3D;,
  xid: MDAwMDAwMDAwMDAwMDAwMzIyNzY&#x3D;,
  version: 2.0.1,
  exemption: low_value
)
```

