# OpenapiClient::CustomersApi

All URIs are relative to *https://api.checkout.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**update_customer_details**](CustomersApi.md#update_customer_details) | **PATCH** /customers/{id} | Update customer details |


## update_customer_details

> update_customer_details(id, update_customer_request)

Update customer details

Update details of a customer

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

api_instance = OpenapiClient::CustomersApi.new
id = 'id_example' # String | The customer id
update_customer_request = OpenapiClient::UpdateCustomerRequest.new # UpdateCustomerRequest | 

begin
  # Update customer details
  api_instance.update_customer_details(id, update_customer_request)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->update_customer_details: #{e}"
end
```

#### Using the update_customer_details_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_customer_details_with_http_info(id, update_customer_request)

```ruby
begin
  # Update customer details
  data, status_code, headers = api_instance.update_customer_details_with_http_info(id, update_customer_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->update_customer_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The customer id |  |
| **update_customer_request** | [**UpdateCustomerRequest**](UpdateCustomerRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

