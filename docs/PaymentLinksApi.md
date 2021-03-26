# OpenapiClient::PaymentLinksApi

All URIs are relative to *https://api.checkout.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_a_payment_link_session**](PaymentLinksApi.md#create_a_payment_link_session) | **POST** /payment-links | Create a Payment Link |


## create_a_payment_link_session

> <PaymentLinksResponse> create_a_payment_link_session(payment_links_request)

Create a Payment Link

Create a Payment Link and pass through all the payment information, like the amount, currency, country and reference. 

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

api_instance = OpenapiClient::PaymentLinksApi.new
payment_links_request = OpenapiClient::PaymentLinksRequest.new({amount: 200, currency: 'GBP', billing: OpenapiClient::PaymentLinksRequestBilling.new({address: OpenapiClient::Address.new})}) # PaymentLinksRequest | 

begin
  # Create a Payment Link
  result = api_instance.create_a_payment_link_session(payment_links_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentLinksApi->create_a_payment_link_session: #{e}"
end
```

#### Using the create_a_payment_link_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentLinksResponse>, Integer, Hash)> create_a_payment_link_session_with_http_info(payment_links_request)

```ruby
begin
  # Create a Payment Link
  data, status_code, headers = api_instance.create_a_payment_link_session_with_http_info(payment_links_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentLinksResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentLinksApi->create_a_payment_link_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_links_request** | [**PaymentLinksRequest**](PaymentLinksRequest.md) |  |  |

### Return type

[**PaymentLinksResponse**](PaymentLinksResponse.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

