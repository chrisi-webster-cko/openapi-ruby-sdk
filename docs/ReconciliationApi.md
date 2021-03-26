# OpenapiClient::ReconciliationApi

All URIs are relative to *https://api.checkout.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_csv_payments_report**](ReconciliationApi.md#get_csv_payments_report) | **GET** /reporting/payments/download | Get CSV payments report |
| [**get_csv_single_statement_report**](ReconciliationApi.md#get_csv_single_statement_report) | **GET** /reporting/statements/{StatementId}/payments/download | Get CSV single statement report |
| [**get_csv_statements_report**](ReconciliationApi.md#get_csv_statements_report) | **GET** /reporting/statements/download | Get CSV statements report |
| [**get_json_payments_report**](ReconciliationApi.md#get_json_payments_report) | **GET** /reporting/payments | Get JSON payments report |
| [**get_json_single_payment_report**](ReconciliationApi.md#get_json_single_payment_report) | **GET** /reporting/payments/{paymentId} | Get JSON single payment report |
| [**get_json_statements_report**](ReconciliationApi.md#get_json_statements_report) | **GET** /reporting/statements | Get JSON statements report |


## get_csv_payments_report

> get_csv_payments_report(opts)

Get CSV payments report

In addition to the JSON format returned by the `reporting/payments` endpoint, you can also download a CSV report containing the same data. Learn more about <a href=\"https://docs.checkout.com/reporting-and-insights/reconciliation-api/payments-endpoint#Paymentsendpoint-HowtoreadtheCSVfile\" target=\"_blank\">how to read your CSV report</a>.

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

api_instance = OpenapiClient::ReconciliationApi.new
opts = {
  from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time from which to search for payments
  to: Time.parse('2013-10-20T19:20:30+01:00') # Time | Date and time until which to search for payments
}

begin
  # Get CSV payments report
  api_instance.get_csv_payments_report(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReconciliationApi->get_csv_payments_report: #{e}"
end
```

#### Using the get_csv_payments_report_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_csv_payments_report_with_http_info(opts)

```ruby
begin
  # Get CSV payments report
  data, status_code, headers = api_instance.get_csv_payments_report_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReconciliationApi->get_csv_payments_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Time** | Date and time from which to search for payments | [optional] |
| **to** | **Time** | Date and time until which to search for payments | [optional] |

### Return type

nil (empty response body)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_csv_single_statement_report

> get_csv_single_statement_report(statement_id)

Get CSV single statement report

Downloads a CSV statement report containing all of the data related to a specific statement, based on the statement's identifier.

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

api_instance = OpenapiClient::ReconciliationApi.new
statement_id = '190110B107654' # String | The unique statement identifier

begin
  # Get CSV single statement report
  api_instance.get_csv_single_statement_report(statement_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReconciliationApi->get_csv_single_statement_report: #{e}"
end
```

#### Using the get_csv_single_statement_report_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_csv_single_statement_report_with_http_info(statement_id)

```ruby
begin
  # Get CSV single statement report
  data, status_code, headers = api_instance.get_csv_single_statement_report_with_http_info(statement_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReconciliationApi->get_csv_single_statement_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **statement_id** | **String** | The unique statement identifier |  |

### Return type

nil (empty response body)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_csv_statements_report

> get_csv_statements_report

Get CSV statements report

In addition to the JSON format returned by the `reporting/statements` endpoint, you can also download a CSV report containing the same data.

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

api_instance = OpenapiClient::ReconciliationApi.new

begin
  # Get CSV statements report
  api_instance.get_csv_statements_report
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReconciliationApi->get_csv_statements_report: #{e}"
end
```

#### Using the get_csv_statements_report_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_csv_statements_report_with_http_info

```ruby
begin
  # Get CSV statements report
  data, status_code, headers = api_instance.get_csv_statements_report_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReconciliationApi->get_csv_statements_report_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_json_payments_report

> <PaymentsReportResponse> get_json_payments_report(opts)

Get JSON payments report

Returns a JSON report containing all payments within your specified parameters. You can reconcile the data from this report against your statements (which can be found in the <a href=\"https://hub.checkout.com/login\" target=\"_blank\">Hub</a>), the list of payments in the Hub (using the `Reference` field) or your own systems. *Note:* no payments from before 7 February 2019 at 00.00.00 UTC will appear when using the payments endpoint. To view earlier payments, please contact our support team.

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

api_instance = OpenapiClient::ReconciliationApi.new
opts = {
  from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time from which to search for payments
  to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time until which to search for payments
  reference: 'reference_example', # String | Reference of a specific payment to search for
  limit: 56 # Integer | Sets a limit on the number of results
}

begin
  # Get JSON payments report
  result = api_instance.get_json_payments_report(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReconciliationApi->get_json_payments_report: #{e}"
end
```

#### Using the get_json_payments_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentsReportResponse>, Integer, Hash)> get_json_payments_report_with_http_info(opts)

```ruby
begin
  # Get JSON payments report
  data, status_code, headers = api_instance.get_json_payments_report_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentsReportResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReconciliationApi->get_json_payments_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Time** | Date and time from which to search for payments | [optional] |
| **to** | **Time** | Date and time until which to search for payments | [optional] |
| **reference** | **String** | Reference of a specific payment to search for | [optional] |
| **limit** | **Integer** | Sets a limit on the number of results | [optional][default to 200] |

### Return type

[**PaymentsReportResponse**](PaymentsReportResponse.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_json_single_payment_report

> <PaymentsReportResponse> get_json_single_payment_report(payment_id)

Get JSON single payment report

Returns a JSON payment report containing all of the data related to a specific payment, based on the payment's identifier. *Note:* no payments from before 7 February 2019 at 00.00.00 UTC will appear when using the payments endpoint. To view earlier payments, please contact our support team.

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

api_instance = OpenapiClient::ReconciliationApi.new
payment_id = 'payment_id_example' # String | The unique payment identifier

begin
  # Get JSON single payment report
  result = api_instance.get_json_single_payment_report(payment_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReconciliationApi->get_json_single_payment_report: #{e}"
end
```

#### Using the get_json_single_payment_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentsReportResponse>, Integer, Hash)> get_json_single_payment_report_with_http_info(payment_id)

```ruby
begin
  # Get JSON single payment report
  data, status_code, headers = api_instance.get_json_single_payment_report_with_http_info(payment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentsReportResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReconciliationApi->get_json_single_payment_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_id** | **String** | The unique payment identifier |  |

### Return type

[**PaymentsReportResponse**](PaymentsReportResponse.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_json_statements_report

> <StatementsReportResponse> get_json_statements_report(opts)

Get JSON statements report

Returns a JSON report containing all statements within your specified parameters. Please note that the timezone for the request will be UTC.

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

api_instance = OpenapiClient::ReconciliationApi.new
opts = {
  from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time from which to search for statements
  to: Time.parse('2013-10-20T19:20:30+01:00') # Time | Date and time until which to search for statements
}

begin
  # Get JSON statements report
  result = api_instance.get_json_statements_report(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReconciliationApi->get_json_statements_report: #{e}"
end
```

#### Using the get_json_statements_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatementsReportResponse>, Integer, Hash)> get_json_statements_report_with_http_info(opts)

```ruby
begin
  # Get JSON statements report
  data, status_code, headers = api_instance.get_json_statements_report_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatementsReportResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReconciliationApi->get_json_statements_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Time** | Date and time from which to search for statements | [optional] |
| **to** | **Time** | Date and time until which to search for statements | [optional] |

### Return type

[**StatementsReportResponse**](StatementsReportResponse.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

