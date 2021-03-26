# OpenapiClient::TokensApi

All URIs are relative to *https://api.checkout.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**request_a_token**](TokensApi.md#request_a_token) | **POST** /tokens | Request a token |


## request_a_token

> <TokenResponse> request_a_token(opts)

Request a token

Exchange a digital wallet payment token or card details for a reference token that can be used later to request a card payment. Tokens are single use and expire after 15 minutes.  To create a token, please authenticate using your public key.   **Please note:** You should only use the `card` type for testing purposes. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiPublicKey
  config.api_key['ApiPublicKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiPublicKey'] = 'Bearer'
end

api_instance = OpenapiClient::TokensApi.new
opts = {
  token_request: OpenapiClient::TokenRequest.new({type: 'card'}) # TokenRequest | 
}

begin
  # Request a token
  result = api_instance.request_a_token(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TokensApi->request_a_token: #{e}"
end
```

#### Using the request_a_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenResponse>, Integer, Hash)> request_a_token_with_http_info(opts)

```ruby
begin
  # Request a token
  data, status_code, headers = api_instance.request_a_token_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TokensApi->request_a_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token_request** | [**TokenRequest**](TokenRequest.md) |  | [optional] |

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

[ApiPublicKey](../README.md#ApiPublicKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

