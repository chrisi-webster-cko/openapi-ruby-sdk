# OpenapiClient::FileResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The file identifier | [optional] |
| **filename** | **String** | The filename, including its extension | [optional] |
| **purpose** | [**FilePurpose**](FilePurpose.md) |  | [optional] |
| **size** | **Integer** | The size of the file upload object (in bytes) | [optional] |
| **uploaded_on** | **String** | The date and time file was uploaded (in UTC) | [optional] |
| **_links** | [**FileResultLinks**](FileResultLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::FileResult.new(
  id: file_6lbss42ezvoufcb2beo76rvwly,
  filename: receipt.jpg,
  purpose: null,
  size: 1024,
  uploaded_on: 2019-05-17T16:48:52Z,
  _links: null
)
```

