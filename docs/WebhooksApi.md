# OpenapiClient::WebhooksApi

All URIs are relative to *https://api.checkout.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**partially_update_webhook**](WebhooksApi.md#partially_update_webhook) | **PATCH** /webhooks/{id} | Partially update webhook |
| [**register_webhook**](WebhooksApi.md#register_webhook) | **POST** /webhooks | Register webhook |
| [**remove_webhook**](WebhooksApi.md#remove_webhook) | **DELETE** /webhooks/{id} | Remove webhook |
| [**retrieve_webhook**](WebhooksApi.md#retrieve_webhook) | **GET** /webhooks/{id} | Retrieve webhook |
| [**retrieve_webhooks**](WebhooksApi.md#retrieve_webhooks) | **GET** /webhooks | Retrieve webhooks |
| [**update_webhook**](WebhooksApi.md#update_webhook) | **PUT** /webhooks/{id} | Update webhook |


## partially_update_webhook

> <Webhook> partially_update_webhook(id, opts)

Partially update webhook

Updates all or some of the registered webhook details

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

api_instance = OpenapiClient::WebhooksApi.new
id = 'wh_387ac7a83a054e37ae140105429d76b5' # String | The webhook identifier 
opts = {
  webhook_request: OpenapiClient::WebhookRequest.new({url: 'https://example.com/webhooks', event_types: ['event_types_example']}) # WebhookRequest | 
}

begin
  # Partially update webhook
  result = api_instance.partially_update_webhook(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->partially_update_webhook: #{e}"
end
```

#### Using the partially_update_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> partially_update_webhook_with_http_info(id, opts)

```ruby
begin
  # Partially update webhook
  data, status_code, headers = api_instance.partially_update_webhook_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->partially_update_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The webhook identifier  |  |
| **webhook_request** | [**WebhookRequest**](WebhookRequest.md) |  | [optional] |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## register_webhook

> <Webhook> register_webhook(opts)

Register webhook

Register a new webhook endpoint that Checkout.com will post all or selected events to 

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

api_instance = OpenapiClient::WebhooksApi.new
opts = {
  webhook_request: OpenapiClient::WebhookRequest.new({url: 'https://example.com/webhooks', event_types: ['event_types_example']}) # WebhookRequest | 
}

begin
  # Register webhook
  result = api_instance.register_webhook(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->register_webhook: #{e}"
end
```

#### Using the register_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> register_webhook_with_http_info(opts)

```ruby
begin
  # Register webhook
  data, status_code, headers = api_instance.register_webhook_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->register_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_request** | [**WebhookRequest**](WebhookRequest.md) |  | [optional] |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_webhook

> remove_webhook(id)

Remove webhook

Removes an existing webhook

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

api_instance = OpenapiClient::WebhooksApi.new
id = 'wh_387ac7a83a054e37ae140105429d76b5' # String | The webhook identifier 

begin
  # Remove webhook
  api_instance.remove_webhook(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->remove_webhook: #{e}"
end
```

#### Using the remove_webhook_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_webhook_with_http_info(id)

```ruby
begin
  # Remove webhook
  data, status_code, headers = api_instance.remove_webhook_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->remove_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The webhook identifier  |  |

### Return type

nil (empty response body)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## retrieve_webhook

> <WebhookRequest> retrieve_webhook(id)

Retrieve webhook

Retrieves the webhook with the specified identifier string 

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

api_instance = OpenapiClient::WebhooksApi.new
id = 'wh_387ac7a83a054e37ae140105429d76b5' # String | The webhook identifier 

begin
  # Retrieve webhook
  result = api_instance.retrieve_webhook(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->retrieve_webhook: #{e}"
end
```

#### Using the retrieve_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookRequest>, Integer, Hash)> retrieve_webhook_with_http_info(id)

```ruby
begin
  # Retrieve webhook
  data, status_code, headers = api_instance.retrieve_webhook_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->retrieve_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The webhook identifier  |  |

### Return type

[**WebhookRequest**](WebhookRequest.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_webhooks

> <Array<Webhook>> retrieve_webhooks

Retrieve webhooks

Retrieves the webhooks configured for the channel identified by your API key 

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

api_instance = OpenapiClient::WebhooksApi.new

begin
  # Retrieve webhooks
  result = api_instance.retrieve_webhooks
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->retrieve_webhooks: #{e}"
end
```

#### Using the retrieve_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Webhook>>, Integer, Hash)> retrieve_webhooks_with_http_info

```ruby
begin
  # Retrieve webhooks
  data, status_code, headers = api_instance.retrieve_webhooks_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Webhook>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->retrieve_webhooks_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Webhook&gt;**](Webhook.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_webhook

> <Webhook> update_webhook(id, opts)

Update webhook

Updates an existing webhook 

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

api_instance = OpenapiClient::WebhooksApi.new
id = 'wh_387ac7a83a054e37ae140105429d76b5' # String | The webhook identifier 
opts = {
  webhook_request: OpenapiClient::WebhookRequest.new({url: 'https://example.com/webhooks', event_types: ['event_types_example']}) # WebhookRequest | 
}

begin
  # Update webhook
  result = api_instance.update_webhook(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook: #{e}"
end
```

#### Using the update_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> update_webhook_with_http_info(id, opts)

```ruby
begin
  # Update webhook
  data, status_code, headers = api_instance.update_webhook_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The webhook identifier  |  |
| **webhook_request** | [**WebhookRequest**](WebhookRequest.md) |  | [optional] |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

