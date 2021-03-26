# OpenapiClient::SourceRequestCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The identifier of an existing customer. If neither customer &#x60;id&#x60; or &#x60;email&#x60; is provided, then  a new customer will be registered  | [optional] |
| **email** | **String** | An optional email address to associate with the customer | [optional] |
| **name** | **String** | The customer&#39;s name. This will only set the name for *new* customers | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SourceRequestCustomer.new(
  id: cus_y3oqhf46pyzuxjbcn2giaqnb44,
  email: jokershere@gmail.com,
  name: Jack Napier
)
```

