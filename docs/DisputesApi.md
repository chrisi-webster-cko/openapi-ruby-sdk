# OpenapiClient::DisputesApi

All URIs are relative to *https://api.checkout.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**accept_dispute**](DisputesApi.md#accept_dispute) | **POST** /disputes/{dispute_id}/accept | Accept dispute |
| [**get_dispute_details**](DisputesApi.md#get_dispute_details) | **GET** /disputes/{dispute_id} | Get dispute details |
| [**get_dispute_evidence**](DisputesApi.md#get_dispute_evidence) | **GET** /disputes/{dispute_id}/evidence | Get dispute evidence |
| [**get_disputes**](DisputesApi.md#get_disputes) | **GET** /disputes | Get disputes |
| [**get_file_information**](DisputesApi.md#get_file_information) | **GET** /files/{file_id} | Get file information |
| [**provide_dispute_evidence**](DisputesApi.md#provide_dispute_evidence) | **PUT** /disputes/{dispute_id}/evidence | Provide dispute evidence |
| [**submit_dispute_evidence**](DisputesApi.md#submit_dispute_evidence) | **POST** /disputes/{dispute_id}/evidence | Submit dispute evidence |
| [**upload_file**](DisputesApi.md#upload_file) | **POST** /files | Upload file |


## accept_dispute

> accept_dispute(dispute_id)

Accept dispute

If a dispute is legitimate, you can choose to accept it. This will close it for you and remove it from your list of open disputes. There are no further financial implications.

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

api_instance = OpenapiClient::DisputesApi.new
dispute_id = 'dispute_id_example' # String | The dispute identifier

begin
  # Accept dispute
  api_instance.accept_dispute(dispute_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DisputesApi->accept_dispute: #{e}"
end
```

#### Using the accept_dispute_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> accept_dispute_with_http_info(dispute_id)

```ruby
begin
  # Accept dispute
  data, status_code, headers = api_instance.accept_dispute_with_http_info(dispute_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DisputesApi->accept_dispute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dispute_id** | **String** | The dispute identifier |  |

### Return type

nil (empty response body)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_dispute_details

> <Dispute> get_dispute_details(dispute_id)

Get dispute details

Returns all the details of a dispute using the dispute identifier.

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

api_instance = OpenapiClient::DisputesApi.new
dispute_id = 'dispute_id_example' # String | The dispute identifier

begin
  # Get dispute details
  result = api_instance.get_dispute_details(dispute_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DisputesApi->get_dispute_details: #{e}"
end
```

#### Using the get_dispute_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Dispute>, Integer, Hash)> get_dispute_details_with_http_info(dispute_id)

```ruby
begin
  # Get dispute details
  data, status_code, headers = api_instance.get_dispute_details_with_http_info(dispute_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Dispute>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DisputesApi->get_dispute_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dispute_id** | **String** | The dispute identifier |  |

### Return type

[**Dispute**](Dispute.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dispute_evidence

> <Evidence> get_dispute_evidence(dispute_id)

Get dispute evidence

Retrieves a list of the evidence submitted in response to a specific dispute.  

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

api_instance = OpenapiClient::DisputesApi.new
dispute_id = 'dispute_id_example' # String | The dispute identifier

begin
  # Get dispute evidence
  result = api_instance.get_dispute_evidence(dispute_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DisputesApi->get_dispute_evidence: #{e}"
end
```

#### Using the get_dispute_evidence_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Evidence>, Integer, Hash)> get_dispute_evidence_with_http_info(dispute_id)

```ruby
begin
  # Get dispute evidence
  data, status_code, headers = api_instance.get_dispute_evidence_with_http_info(dispute_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Evidence>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DisputesApi->get_dispute_evidence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dispute_id** | **String** | The dispute identifier |  |

### Return type

[**Evidence**](Evidence.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_disputes

> <DisputePaged> get_disputes(opts)

Get disputes

Returns a list of all disputes against your business. The results will be returned in reverse chronological order, showing the last modified dispute (for example, where you've recently added a piece of evidence) first. You can use the optional parameters below to skip or limit results.

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

api_instance = OpenapiClient::DisputesApi.new
opts = {
  limit: 56, # Integer | The numbers of results to return
  skip: 56, # Integer | The number of results to skip
  from: 'from_example', # String | The date and time from which to filter disputes, based on the dispute's `last_update` field
  to: 'to_example', # String | The date and time until which to filter disputes, based on the dispute's `last_update` field
  id: 'id_example', # String | The unique identifier of the dispute
  statuses: 'evidence_required,evidence_under_review', # String | One or more comma-separated statuses. This works like a logical *OR* operator
  payment_id: 'payment_id_example', # String | The unique identifier of the payment
  payment_reference: 'payment_reference_example', # String | An optional reference (such as an order ID) that you can use later to identify the payment. Previously known as `TrackId`
  payment_arn: 'payment_arn_example', # String | The acquirer reference number (ARN) that you can use to query the issuing bank
  this_channel_only: true # Boolean | If `true`, only returns disputes of the specific channel that the secret key is associated with. Otherwise, returns all disputes for that business
}

begin
  # Get disputes
  result = api_instance.get_disputes(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DisputesApi->get_disputes: #{e}"
end
```

#### Using the get_disputes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisputePaged>, Integer, Hash)> get_disputes_with_http_info(opts)

```ruby
begin
  # Get disputes
  data, status_code, headers = api_instance.get_disputes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisputePaged>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DisputesApi->get_disputes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The numbers of results to return | [optional][default to 50] |
| **skip** | **Integer** | The number of results to skip | [optional][default to 0] |
| **from** | **String** | The date and time from which to filter disputes, based on the dispute&#39;s &#x60;last_update&#x60; field | [optional] |
| **to** | **String** | The date and time until which to filter disputes, based on the dispute&#39;s &#x60;last_update&#x60; field | [optional] |
| **id** | **String** | The unique identifier of the dispute | [optional] |
| **statuses** | **String** | One or more comma-separated statuses. This works like a logical *OR* operator | [optional] |
| **payment_id** | **String** | The unique identifier of the payment | [optional] |
| **payment_reference** | **String** | An optional reference (such as an order ID) that you can use later to identify the payment. Previously known as &#x60;TrackId&#x60; | [optional] |
| **payment_arn** | **String** | The acquirer reference number (ARN) that you can use to query the issuing bank | [optional] |
| **this_channel_only** | **Boolean** | If &#x60;true&#x60;, only returns disputes of the specific channel that the secret key is associated with. Otherwise, returns all disputes for that business | [optional] |

### Return type

[**DisputePaged**](DisputePaged.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_information

> <FileResult> get_file_information(file_id)

Get file information

Retrieve information about a file that was previously uploaded.

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

api_instance = OpenapiClient::DisputesApi.new
file_id = 'file_id_example' # String | The file identifier. It is always prefixed by `file_`.

begin
  # Get file information
  result = api_instance.get_file_information(file_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DisputesApi->get_file_information: #{e}"
end
```

#### Using the get_file_information_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileResult>, Integer, Hash)> get_file_information_with_http_info(file_id)

```ruby
begin
  # Get file information
  data, status_code, headers = api_instance.get_file_information_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileResult>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DisputesApi->get_file_information_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file identifier. It is always prefixed by &#x60;file_&#x60;. |  |

### Return type

[**FileResult**](FileResult.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## provide_dispute_evidence

> provide_dispute_evidence(dispute_id, opts)

Provide dispute evidence

Adds supporting evidence to a dispute. Before using this endpoint, you first need to [upload your files](#tag/Disputes/paths/~1files/post) using the file uploader. You will receive a file id (prefixed by `file_`) which you can then use in your request. Note that this only attaches the evidence to the dispute, it does not send it to us. Once ready, you will need to submit it.  **You must provide at least one evidence type in the body of your request.** 

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

api_instance = OpenapiClient::DisputesApi.new
dispute_id = 'dispute_id_example' # String | The dispute identifier
opts = {
  provide_evidence_request: OpenapiClient::ProvideEvidenceRequest.new # ProvideEvidenceRequest | 
}

begin
  # Provide dispute evidence
  api_instance.provide_dispute_evidence(dispute_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DisputesApi->provide_dispute_evidence: #{e}"
end
```

#### Using the provide_dispute_evidence_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> provide_dispute_evidence_with_http_info(dispute_id, opts)

```ruby
begin
  # Provide dispute evidence
  data, status_code, headers = api_instance.provide_dispute_evidence_with_http_info(dispute_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DisputesApi->provide_dispute_evidence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dispute_id** | **String** | The dispute identifier |  |
| **provide_evidence_request** | [**ProvideEvidenceRequest**](ProvideEvidenceRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## submit_dispute_evidence

> submit_dispute_evidence(dispute_id)

Submit dispute evidence

With this final request, you can submit the evidence that you have previously provided. Make sure you have provided all the relevant information before using this request. You will not be able to amend your evidence once you have submitted it.

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

api_instance = OpenapiClient::DisputesApi.new
dispute_id = 'dispute_id_example' # String | The dispute identifier

begin
  # Submit dispute evidence
  api_instance.submit_dispute_evidence(dispute_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DisputesApi->submit_dispute_evidence: #{e}"
end
```

#### Using the submit_dispute_evidence_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> submit_dispute_evidence_with_http_info(dispute_id)

```ruby
begin
  # Submit dispute evidence
  data, status_code, headers = api_instance.submit_dispute_evidence_with_http_info(dispute_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DisputesApi->submit_dispute_evidence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dispute_id** | **String** | The dispute identifier |  |

### Return type

nil (empty response body)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## upload_file

> <FileUploadResponse> upload_file(file, purpose)

Upload file

Upload a file to use as evidence in a dispute. Your file must be in either JPEG/JPG, PNG or PDF format, and be no larger than 4MB.

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

api_instance = OpenapiClient::DisputesApi.new
file = 'file_example' # String | The path of the file to upload, and its type. <br><i>This must be a local path.</i>
purpose = 'purpose_example' # String | The purpose of the file upload. You must set this to `dispute_evidence`

begin
  # Upload file
  result = api_instance.upload_file(file, purpose)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DisputesApi->upload_file: #{e}"
end
```

#### Using the upload_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileUploadResponse>, Integer, Hash)> upload_file_with_http_info(file, purpose)

```ruby
begin
  # Upload file
  data, status_code, headers = api_instance.upload_file_with_http_info(file, purpose)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileUploadResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DisputesApi->upload_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **String** | The path of the file to upload, and its type. &lt;br&gt;&lt;i&gt;This must be a local path.&lt;/i&gt; |  |
| **purpose** | **String** | The purpose of the file upload. You must set this to &#x60;dispute_evidence&#x60; |  |

### Return type

[**FileUploadResponse**](FileUploadResponse.md)

### Authorization

[ApiSecretKey](../README.md#ApiSecretKey)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

