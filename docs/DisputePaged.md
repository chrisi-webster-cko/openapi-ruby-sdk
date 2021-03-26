# OpenapiClient::DisputePaged

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The numbers of items to return | [optional] |
| **skip** | **Integer** | The number of results to skip | [optional] |
| **from** | **String** | The date and time from which to filter disputes, based on the dispute&#39;s &#x60;last_update&#x60; field | [optional] |
| **to** | **String** | The date and time until which to filter disputes, based on the dispute&#39;s &#x60;last_update&#x60; field | [optional] |
| **statuses** | **String** | One or more comma-separated statuses. This works like a logical *OR* operator | [optional] |
| **id** | **String** | The unique identifier of the dispute | [optional] |
| **payment_id** | **String** | The unique identifier of the payment | [optional] |
| **payment_reference** | **String** | An optional reference (such as an order ID) that you can use later to identify the payment. Previously known as &#x60;TrackId&#x60; | [optional] |
| **payment_arn** | **String** | The acquirer reference number (ARN) that you can use to query the issuing bank | [optional] |
| **this_channel_only** | **Boolean** | If &#x60;true&#x60;, only returns disputes of the specific channel that the secret key is associated with. Otherwise, returns all disputes for that business | [optional] |
| **total_count** | **Integer** | The total number of disputes retrieved (without taking into consideration skip and limit parameters) | [optional] |
| **data** | [**Array&lt;DisputeSummary&gt;**](DisputeSummary.md) | The list of disputes | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DisputePaged.new(
  limit: 10,
  skip: 10,
  from: 2018-08-12T01:15:56Z,
  to: 2018-08-13T11:09:01Z,
  statuses: evidence_required,evidence_under_review,
  id: dsp_rbhwd2qrg13uhrp2newf,
  payment_id: pay_88cb4e671m1da22e9bbbyx,
  payment_reference: th7zxa1kcnqmes8,
  payment_arn: 74548998294293193445538,
  this_channel_only: true,
  total_count: 1,
  data: null
)
```

