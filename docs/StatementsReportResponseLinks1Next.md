# OpenapiClient::StatementsReportResponseLinks1Next

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **href** | **String** | This link allows you to move to the next page of results in the response. Responses are paginated at the payout level | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::StatementsReportResponseLinks1Next.new(
  href: http://api.checkout.com/reporting/statements?from&#x3D;01%2F01%2F2019%2000%3A00%3A00&amp;to&#x3D;01%2F11%2F2019%2000%3A00%3A00&amp;limit&#x3D;1&amp;skip&#x3D;1
)
```

