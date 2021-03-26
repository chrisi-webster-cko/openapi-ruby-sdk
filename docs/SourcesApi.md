# OpenapiClient::SourcesApi

All URIs are relative to *https://api.checkout.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_a_payment_source**](SourcesApi.md#add_a_payment_source) | **POST** /sources | Add a payment source |


## add_a_payment_source

> <AddSourceResponse> add_a_payment_source(opts)

Add a payment source

Add a reusable payment source, like a <a href=\"https://docs.checkout.com/payment-methods/direct-debit/sepa-direct-debit\" target=\"blank\">SEPA Direct Debit</a>, that you can later use to make one or more payments. Payment sources are linked to a specific customer and cannot be shared between customers. 

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

api_instance = OpenapiClient::SourcesApi.new
opts = {
  source_request: OpenapiClient::SourceRequest.new({type: 'sepa'}) # SourceRequest | 
}

begin
  # Add a payment source
  result = api_instance.add_a_payment_source(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SourcesApi->add_a_payment_source: #{e}"
end
```

#### Using the add_a_payment_source_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddSourceResponse>, Integer, Hash)> add_a_payment_source_with_http_info(opts)

```ruby
begin
  # Add a payment source
  data, status_code, headers = api_instance.add_a_payment_source_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddSourceResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SourcesApi->add_a_payment_source_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_request** | [**SourceRequest**](SourceRequest.md) |  | [optional] |

### Return type

[**AddSourceResponse**](AddSourceResponse.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

