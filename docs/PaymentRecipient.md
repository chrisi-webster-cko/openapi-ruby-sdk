# OpenapiClient::PaymentRecipient

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dob** | **Date** | The recipient&#39;s date of birth (yyyy-mm-dd) | [optional] |
| **account_number** | **String** | The first six digits and the last four digits of the primary recipient&#39;s card, without spaces, or up to ten digits of the primary recipient&#39;s account number | [optional] |
| **zip** | **String** | The first part of the UK postcode (e.g., W1T 4TJ would be W1T) | [optional] |
| **first_name** | **String** | The recipient&#39;s first name | [optional] |
| **last_name** | **String** | The recipient&#39;s last name | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentRecipient.new(
  dob: Wed May 15 01:00:00 BST 1985,
  account_number: 5555554444,
  zip: W1T,
  first_name: John,
  last_name: Jones
)
```

