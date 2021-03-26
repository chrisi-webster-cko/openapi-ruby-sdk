# OpenapiClient::HostedPaymentsPageApi

All URIs are relative to *https://api.checkout.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_a_hosted_payments_session**](HostedPaymentsPageApi.md#create_a_hosted_payments_session) | **POST** /hosted-payments | Create a Hosted Payments Page session |


## create_a_hosted_payments_session

> <HostedPaymentsResponse> create_a_hosted_payments_session(hosted_payments_request)

Create a Hosted Payments Page session

Create a Hosted Payments Page session and pass through all the payment information, like the amount, currency, country and reference.  To get started with our Hosted Payments Page, contact your Solutions Engineer or integration@checkout.com. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiSecretKey
  config.api_key['ApiSecretKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiSecretKey'] = 'Bearer'
end

api_instance = OpenapiClient::HostedPaymentsPageApi.new
hosted_payments_request = OpenapiClient::HostedPaymentsRequest.new({currency: 'GBP', billing: OpenapiClient::HostedPaymentsRequestBilling.new({address: OpenapiClient::Address.new}), success_url: 'https://example.com/payments/success', cancel_url: 'https://example.com/payments/cancel', failure_url: 'https://example.com/payments/failure'}) # HostedPaymentsRequest | 

begin
  # Create a Hosted Payments Page session
  result = api_instance.create_a_hosted_payments_session(hosted_payments_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling HostedPaymentsPageApi->create_a_hosted_payments_session: #{e}"
end
```

#### Using the create_a_hosted_payments_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HostedPaymentsResponse>, Integer, Hash)> create_a_hosted_payments_session_with_http_info(hosted_payments_request)

```ruby
begin
  # Create a Hosted Payments Page session
  data, status_code, headers = api_instance.create_a_hosted_payments_session_with_http_info(hosted_payments_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HostedPaymentsResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling HostedPaymentsPageApi->create_a_hosted_payments_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hosted_payments_request** | [**HostedPaymentsRequest**](HostedPaymentsRequest.md) |  |  |

### Return type

[**HostedPaymentsResponse**](HostedPaymentsResponse.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

