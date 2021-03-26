# OpenapiClient::PaymentsApi

All URIs are relative to *https://api.checkout.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**capture_a_payment**](PaymentsApi.md#capture_a_payment) | **POST** /payments/{id}/captures | Capture a payment |
| [**get_payment_actions**](PaymentsApi.md#get_payment_actions) | **GET** /payments/{id}/actions | Get payment actions |
| [**get_payment_details**](PaymentsApi.md#get_payment_details) | **GET** /payments/{id} | Get payment details |
| [**refund_a_payment**](PaymentsApi.md#refund_a_payment) | **POST** /payments/{id}/refunds | Refund a payment |
| [**request_a_payment_or_payout**](PaymentsApi.md#request_a_payment_or_payout) | **POST** /payments | Request a payment or payout |
| [**void_a_payment**](PaymentsApi.md#void_a_payment) | **POST** /payments/{id}/voids | Void a payment |


## capture_a_payment

> <CaptureAcceptedResponse> capture_a_payment(id, opts)

Capture a payment

Captures a payment if supported by the payment method.  For card payments, capture requests are processed asynchronously. You can use [webhooks](#tag/Webhooks) to be notified if the capture is successful. 

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

api_instance = OpenapiClient::PaymentsApi.new
id = 'id_example' # String | The payment identifier
opts = {
  cko_idempotency_key: 'cko_idempotency_key_example', # String | An optional idempotency key for safely retrying payment requests
  capture_request: OpenapiClient::CaptureRequest.new # CaptureRequest | 
}

begin
  # Capture a payment
  result = api_instance.capture_a_payment(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->capture_a_payment: #{e}"
end
```

#### Using the capture_a_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CaptureAcceptedResponse>, Integer, Hash)> capture_a_payment_with_http_info(id, opts)

```ruby
begin
  # Capture a payment
  data, status_code, headers = api_instance.capture_a_payment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CaptureAcceptedResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->capture_a_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The payment identifier |  |
| **cko_idempotency_key** | **String** | An optional idempotency key for safely retrying payment requests | [optional] |
| **capture_request** | [**CaptureRequest**](CaptureRequest.md) |  | [optional] |

### Return type

[**CaptureAcceptedResponse**](CaptureAcceptedResponse.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_payment_actions

> <Array<PaymentAction>> get_payment_actions(id)

Get payment actions

Returns all the actions associated with a payment ordered by processing date in descending order (latest first). 

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

api_instance = OpenapiClient::PaymentsApi.new
id = 'id_example' # String | The payment identifier

begin
  # Get payment actions
  result = api_instance.get_payment_actions(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->get_payment_actions: #{e}"
end
```

#### Using the get_payment_actions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PaymentAction>>, Integer, Hash)> get_payment_actions_with_http_info(id)

```ruby
begin
  # Get payment actions
  data, status_code, headers = api_instance.get_payment_actions_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PaymentAction>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->get_payment_actions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The payment identifier |  |

### Return type

[**Array&lt;PaymentAction&gt;**](PaymentAction.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_details

> <Payment> get_payment_details(id)

Get payment details

Returns the details of the payment with the specified identifier string.  If the payment method requires a redirection to a third party (e.g., 3D Secure), the redirect URL back to your site will include a `cko-session-id` query parameter containing a payment session ID that can be used to obtain the details of the payment, for example:  http://example.com/success?cko-session-id=sid_ubfj2q76miwundwlk72vxt2i7q. 

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

api_instance = OpenapiClient::PaymentsApi.new
id = 'id_example' # String | The payment or payment session identifier

begin
  # Get payment details
  result = api_instance.get_payment_details(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->get_payment_details: #{e}"
end
```

#### Using the get_payment_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> get_payment_details_with_http_info(id)

```ruby
begin
  # Get payment details
  data, status_code, headers = api_instance.get_payment_details_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->get_payment_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The payment or payment session identifier |  |

### Return type

[**Payment**](Payment.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## refund_a_payment

> <RefundAcceptedResponse> refund_a_payment(id, opts)

Refund a payment

Refunds a payment if supported by the payment method.  For card payments, refund requests are processed asynchronously. You can use [webhooks](#tag/Webhooks) to be notified if the refund is successful. 

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

api_instance = OpenapiClient::PaymentsApi.new
id = 'id_example' # String | The payment identifier
opts = {
  cko_idempotency_key: 'cko_idempotency_key_example', # String | An optional idempotency key for safely retrying payment requests
  refund_request: OpenapiClient::RefundRequest.new # RefundRequest | 
}

begin
  # Refund a payment
  result = api_instance.refund_a_payment(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->refund_a_payment: #{e}"
end
```

#### Using the refund_a_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RefundAcceptedResponse>, Integer, Hash)> refund_a_payment_with_http_info(id, opts)

```ruby
begin
  # Refund a payment
  data, status_code, headers = api_instance.refund_a_payment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RefundAcceptedResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->refund_a_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The payment identifier |  |
| **cko_idempotency_key** | **String** | An optional idempotency key for safely retrying payment requests | [optional] |
| **refund_request** | [**RefundRequest**](RefundRequest.md) |  | [optional] |

### Return type

[**RefundAcceptedResponse**](RefundAcceptedResponse.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## request_a_payment_or_payout

> <PaymentResponse> request_a_payment_or_payout(opts)

Request a payment or payout

To accept payments from <a href=\"https://docs.checkout.com/payment-methods/cards\" target=\"blank\">cards</a>, <a href=\"https://docs.checkout.com/payment-methods/wallets\" target=\"blank\">digital wallets</a> and many <a href=\"https://docs.checkout.com/payment-methods/\" target=\"blank\">alternative payment methods</a>, specify the `source.type` field, along with the source-specific data.  To <a href=\"https://docs.checkout.com/payment-actions/pay-out-to-a-card\" target=\"blank\">pay out to a card</a>, specify the destination of your payout using the `destination.type` field, along with the destination-specific data.  To verify the success of the payment, check the `approved` field in the response. 

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

api_instance = OpenapiClient::PaymentsApi.new
opts = {
  cko_idempotency_key: 'cko_idempotency_key_example', # String | An optional idempotency key for safely retrying payment requests
  unknown_base_type: TODO # UNKNOWN_BASE_TYPE | 
}

begin
  # Request a payment or payout
  result = api_instance.request_a_payment_or_payout(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->request_a_payment_or_payout: #{e}"
end
```

#### Using the request_a_payment_or_payout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentResponse>, Integer, Hash)> request_a_payment_or_payout_with_http_info(opts)

```ruby
begin
  # Request a payment or payout
  data, status_code, headers = api_instance.request_a_payment_or_payout_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->request_a_payment_or_payout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cko_idempotency_key** | **String** | An optional idempotency key for safely retrying payment requests | [optional] |
| **unknown_base_type** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md) |  | [optional] |

### Return type

[**PaymentResponse**](PaymentResponse.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## void_a_payment

> <VoidAcceptedResponse> void_a_payment(id, opts)

Void a payment

Voids a payment if supported by the payment method.  For card payments, void requests are processed asynchronously. You can use [webhooks](#tag/Webhooks) to be notified if the void is successful. 

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

api_instance = OpenapiClient::PaymentsApi.new
id = 'id_example' # String | The payment identifier
opts = {
  cko_idempotency_key: 'cko_idempotency_key_example', # String | An optional idempotency key for safely retrying payment requests
  void_request: OpenapiClient::VoidRequest.new # VoidRequest | 
}

begin
  # Void a payment
  result = api_instance.void_a_payment(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->void_a_payment: #{e}"
end
```

#### Using the void_a_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VoidAcceptedResponse>, Integer, Hash)> void_a_payment_with_http_info(id, opts)

```ruby
begin
  # Void a payment
  data, status_code, headers = api_instance.void_a_payment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VoidAcceptedResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PaymentsApi->void_a_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The payment identifier |  |
| **cko_idempotency_key** | **String** | An optional idempotency key for safely retrying payment requests | [optional] |
| **void_request** | [**VoidRequest**](VoidRequest.md) |  | [optional] |

### Return type

[**VoidAcceptedResponse**](VoidAcceptedResponse.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

