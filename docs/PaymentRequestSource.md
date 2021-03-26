# OpenapiClient::PaymentRequestSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The payment source type &lt;br&gt; *Note:* *To make a payment with full card details, you must be &lt;a href&#x3D;\&quot;https://docs.checkout.com/risk-management/pci-compliance\&quot; target&#x3D;\&quot;blank\&quot;&gt;SAQ D PCI compliant&lt;/a&gt;* |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestSource.new(
  type: card
)
```

