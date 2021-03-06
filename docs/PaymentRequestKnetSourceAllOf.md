# OpenapiClient::PaymentRequestKnetSourceAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **language** | **String** | This field enables the issuer&#39;s site to select the consumer&#39;s preferred language (e.g. the language selected on the merchant&#39;s site), if the issuer&#39;s site supports this. Code list in accordance with ISO 639-1. (Arabic &#x3D; &#39;ar&#39;, English &#x3D; &#39;en&#39;). Note that &#39;ar&#39; corresponds to &#39;ARA&#39; and &#39;en&#39; to &#39;USA&#39; values accepted by KNet Gateway |  |
| **user_defined_field1** | **String** | User-defined field that can be used to pass and store any additional transaction data required to be archived with the transaction and available as a searching criteria. Only alphanumeric characters and spaces are allowed | [optional] |
| **user_defined_field2** | **String** | User-defined field that can be used to pass and store any additional transaction data required to be archived with the transaction and available as a searching criteria. Only alphanumeric characters and spaces are allowed | [optional] |
| **user_defined_field3** | **String** | User-defined field that can be used to pass and store any additional transaction data required to be archived with the transaction and available as a searching criteria. Only alphanumeric characters and spaces are allowed. Note that this field must be omitted when the &#x60;card_token&#x60; field is not empty. This restriction exists because a card token is passed to KNet Gateway as user defined field 3 | [optional] |
| **user_defined_field4** | **String** | User-defined field that can be used to pass and store any additional transaction data required to be archived with the transaction and available as a searching criteria. Only alphanumeric characters and spaces are allowed. | [optional] |
| **user_defined_field5** | **String** | User-defined field that can be used to pass and store any additional transaction data required to be archived with the transaction and available as a searching criteria. Only alphanumeric characters and spaces are allowed. Note that this field must be omitted when the ptlf field is not empty. This restriction exists because a PTLF value is passed to KNet Gateway as user defined field 5 | [optional] |
| **card_token** | **String** | This token allows re-use of card details for multiple payments. This 8-digit token should be generated by a merchant. When a subsequent payment is initialized with the same card token, a customer is presented with two options. The customer can choose to pay with KFast (doesn&#39;t need to enter card details again), or with KNet as usual. The payment flow stays the same i.e. a merchant should redirect a customer to the redirect URL which is provided in the payment creation response. Note that &#x60;user_defined_field3&#x60; must be omitted when the &#x60;card_token&#x60; field is not empty. This restriction exists because a card token is passed to KNet Gateway as user defined field 3 | [optional] |
| **ptlf** | **String** | This is an ID for merchant PTLF functionality tracking. Only alphanumeric characters are allowed. Note that &#x60;user_defined_field5&#x60; must be omitted when the &#x60;ptlf&#x60; field is not empty. This restriction exists because a PTLF value is passed to KNet Gateway as user defined field 5 | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRequestKnetSourceAllOf.new(
  language: null,
  user_defined_field1: null,
  user_defined_field2: null,
  user_defined_field3: null,
  user_defined_field4: null,
  user_defined_field5: null,
  card_token: null,
  ptlf: null
)
```

