# OpenapiClient::InstrumentsApi

All URIs are relative to *https://api.checkout.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_an_instrument**](InstrumentsApi.md#create_an_instrument) | **POST** /instruments | Create an instrument |
| [**get_instrument_details**](InstrumentsApi.md#get_instrument_details) | **GET** /instruments/{id} | Get instrument details |
| [**update_instrument_details**](InstrumentsApi.md#update_instrument_details) | **PATCH** /instruments/{id} | Update instrument details |


## create_an_instrument

> <InstrumentResponse> create_an_instrument(instrument_request)

Create an instrument

Exchange a single use Checkout.com token for a payment instrument reference, that can be used at any time to request one or more payments. 

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

api_instance = OpenapiClient::InstrumentsApi.new
instrument_request = OpenapiClient::InstrumentRequest.new({type: 'token', token: 'tok_asoto22g2fsu7prwomy12sgfsa'}) # InstrumentRequest | 

begin
  # Create an instrument
  result = api_instance.create_an_instrument(instrument_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstrumentsApi->create_an_instrument: #{e}"
end
```

#### Using the create_an_instrument_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstrumentResponse>, Integer, Hash)> create_an_instrument_with_http_info(instrument_request)

```ruby
begin
  # Create an instrument
  data, status_code, headers = api_instance.create_an_instrument_with_http_info(instrument_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstrumentResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstrumentsApi->create_an_instrument_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instrument_request** | [**InstrumentRequest**](InstrumentRequest.md) |  |  |

### Return type

[**InstrumentResponse**](InstrumentResponse.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_instrument_details

> <RetrieveInstrumentResponse> get_instrument_details(id)

Get instrument details

Returns details of an instrument

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

api_instance = OpenapiClient::InstrumentsApi.new
id = 'id_example' # String | The instrument id

begin
  # Get instrument details
  result = api_instance.get_instrument_details(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstrumentsApi->get_instrument_details: #{e}"
end
```

#### Using the get_instrument_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveInstrumentResponse>, Integer, Hash)> get_instrument_details_with_http_info(id)

```ruby
begin
  # Get instrument details
  data, status_code, headers = api_instance.get_instrument_details_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveInstrumentResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstrumentsApi->get_instrument_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The instrument id |  |

### Return type

[**RetrieveInstrumentResponse**](RetrieveInstrumentResponse.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_instrument_details

> <UpdateInstrumentResponse> update_instrument_details(id, update_instrument_request)

Update instrument details

Update details of an instrument

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

api_instance = OpenapiClient::InstrumentsApi.new
id = 'id_example' # String | The instrument ID
update_instrument_request = OpenapiClient::UpdateInstrumentRequest.new # UpdateInstrumentRequest | 

begin
  # Update instrument details
  result = api_instance.update_instrument_details(id, update_instrument_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstrumentsApi->update_instrument_details: #{e}"
end
```

#### Using the update_instrument_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateInstrumentResponse>, Integer, Hash)> update_instrument_details_with_http_info(id, update_instrument_request)

```ruby
begin
  # Update instrument details
  data, status_code, headers = api_instance.update_instrument_details_with_http_info(id, update_instrument_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateInstrumentResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstrumentsApi->update_instrument_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The instrument ID |  |
| **update_instrument_request** | [**UpdateInstrumentRequest**](UpdateInstrumentRequest.md) |  |  |

### Return type

[**UpdateInstrumentResponse**](UpdateInstrumentResponse.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

