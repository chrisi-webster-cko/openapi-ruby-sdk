# OpenapiClient::01SepaSourceResponseAllOfLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**Link**](Link.md) | The URI of the payment source | [optional] |
| **cancel** | [**Link**](Link.md) | A link to cancel the SEPA Direct Debit mandate | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::01SepaSourceResponseAllOfLinks.new(
  _self: null,
  cancel: null
)
```

