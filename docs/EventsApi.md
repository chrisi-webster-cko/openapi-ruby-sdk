# OpenapiClient::EventsApi

All URIs are relative to *https://api.checkout.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**retrieve_event**](EventsApi.md#retrieve_event) | **GET** /events/{eventId} | Retrieve event |
| [**retrieve_event_notification**](EventsApi.md#retrieve_event_notification) | **GET** /events/{eventId}/notifications/{notificationId} | Retrieve event notification |
| [**retrieve_event_types**](EventsApi.md#retrieve_event_types) | **GET** /event-types | Retrieve event types |
| [**retry_all_webhooks**](EventsApi.md#retry_all_webhooks) | **POST** /events/{eventId}/webhooks/retry | Retry all webhooks |
| [**retry_webhook**](EventsApi.md#retry_webhook) | **POST** /events/{eventId}/webhooks/{webhookId}/retry | Retry webhook |


## retrieve_event

> <EventObject> retrieve_event(event_id)

Retrieve event

Retrieves the event with the specified identifier string. The event `data` includes the full event details, the schema of which will vary based on the `type`. 

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

api_instance = OpenapiClient::EventsApi.new
event_id = 'event_id_example' # String | The event identifier

begin
  # Retrieve event
  result = api_instance.retrieve_event(event_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->retrieve_event: #{e}"
end
```

#### Using the retrieve_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventObject>, Integer, Hash)> retrieve_event_with_http_info(event_id)

```ruby
begin
  # Retrieve event
  data, status_code, headers = api_instance.retrieve_event_with_http_info(event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventObject>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->retrieve_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The event identifier |  |

### Return type

[**EventObject**](EventObject.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_event_notification

> <Notification> retrieve_event_notification(event_id, notification_id)

Retrieve event notification

Retrieves the attempts for a specific event notification

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

api_instance = OpenapiClient::EventsApi.new
event_id = 'event_id_example' # String | The event identifier
notification_id = 'notification_id_example' # String | The notification identifier

begin
  # Retrieve event notification
  result = api_instance.retrieve_event_notification(event_id, notification_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->retrieve_event_notification: #{e}"
end
```

#### Using the retrieve_event_notification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> retrieve_event_notification_with_http_info(event_id, notification_id)

```ruby
begin
  # Retrieve event notification
  data, status_code, headers = api_instance.retrieve_event_notification_with_http_info(event_id, notification_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->retrieve_event_notification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The event identifier |  |
| **notification_id** | **String** | The notification identifier |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_event_types

> <Array<EventTypesObject>> retrieve_event_types(opts)

Retrieve event types

Retrieve a list of event types grouped by their respective version that you can configure on your webhooks.

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

api_instance = OpenapiClient::EventsApi.new
opts = {
  version: 'version_example' # String | The API version for which you want to retrieve the event types. Set this to `1.0` for the legacy API or `2.0` for the Unified Payments API. If no version is specified, event types for both versions will be returned.
}

begin
  # Retrieve event types
  result = api_instance.retrieve_event_types(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->retrieve_event_types: #{e}"
end
```

#### Using the retrieve_event_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<EventTypesObject>>, Integer, Hash)> retrieve_event_types_with_http_info(opts)

```ruby
begin
  # Retrieve event types
  data, status_code, headers = api_instance.retrieve_event_types_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<EventTypesObject>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->retrieve_event_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | The API version for which you want to retrieve the event types. Set this to &#x60;1.0&#x60; for the legacy API or &#x60;2.0&#x60; for the Unified Payments API. If no version is specified, event types for both versions will be returned. | [optional] |

### Return type

[**Array&lt;EventTypesObject&gt;**](EventTypesObject.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retry_all_webhooks

> retry_all_webhooks(event_id)

Retry all webhooks

Retries all webhook notifications configured for the specified event

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

api_instance = OpenapiClient::EventsApi.new
event_id = 'event_id_example' # String | The event identifier

begin
  # Retry all webhooks
  api_instance.retry_all_webhooks(event_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->retry_all_webhooks: #{e}"
end
```

#### Using the retry_all_webhooks_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> retry_all_webhooks_with_http_info(event_id)

```ruby
begin
  # Retry all webhooks
  data, status_code, headers = api_instance.retry_all_webhooks_with_http_info(event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->retry_all_webhooks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The event identifier |  |

### Return type

nil (empty response body)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## retry_webhook

> retry_webhook(event_id, webhook_id)

Retry webhook

Retries a specific webhook notification for the given event

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

api_instance = OpenapiClient::EventsApi.new
event_id = 'event_id_example' # String | The event identifier
webhook_id = 'wh_387ac7a83a054e37ae140105429d76b5' # String | The webhook identifier

begin
  # Retry webhook
  api_instance.retry_webhook(event_id, webhook_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->retry_webhook: #{e}"
end
```

#### Using the retry_webhook_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> retry_webhook_with_http_info(event_id, webhook_id)

```ruby
begin
  # Retry webhook
  data, status_code, headers = api_instance.retry_webhook_with_http_info(event_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->retry_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The event identifier |  |
| **webhook_id** | **String** | The webhook identifier |  |

### Return type

nil (empty response body)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

