# OpenapiClient::ProvideEvidenceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proof_of_delivery_or_service_file** | **String** | A file containing proof of delivery of goods or services | [optional] |
| **proof_of_delivery_or_service_text** | **String** | A brief text description of the file. You can also use this field to provide a link | [optional] |
| **invoice_or_receipt_file** | **String** | A file containing an invoice/receipt | [optional] |
| **invoice_or_receipt_text** | **String** | A brief text description of the file. You can also use this field to provide a link | [optional] |
| **invoice_showing_distinct_transactions_file** | **String** | A file containing invoice showing two distinct transactions | [optional] |
| **invoice_showing_distinct_transactions_text** | **String** | A brief text description of the file. You can also use this field to provide a link | [optional] |
| **customer_communication_file** | **String** | A file containing customer cummunication | [optional] |
| **customer_communication_text** | **String** | A brief text description of the file. You can also use this field to provide a link | [optional] |
| **refund_or_cancellation_policy_file** | **String** | A file containing refund/cancellation policy | [optional] |
| **refund_or_cancellation_policy_text** | **String** | A brief text description of the file. You can also use this field to provide a link | [optional] |
| **recurring_transaction_agreement_file** | **String** | A file containing the recurring transaction agreement | [optional] |
| **recurring_transaction_agreement_text** | **String** | A brief text description of the file. You can also use this field to provide a link | [optional] |
| **additional_evidence_file** | **String** | A file containing additional supporting documents | [optional] |
| **additional_evidence_text** | **String** | A brief text description of the file. You can also use this field to provide a link | [optional] |
| **proof_of_delivery_or_service_date_file** | **String** | A file showing the delivery date of the provided service/merchandise | [optional] |
| **proof_of_delivery_or_service_date_text** | **String** | A brief text description of the file. You can also use this field to provide a link | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ProvideEvidenceRequest.new(
  proof_of_delivery_or_service_file: file_jmbfgkjromvcrn9t4qu4,
  proof_of_delivery_or_service_text: http://checkout.com/document.pdf,
  invoice_or_receipt_file: file_jmbfgkjromvcrn9t4qu4,
  invoice_or_receipt_text: Copy of the invoice,
  invoice_showing_distinct_transactions_file: file_jmbfgkjromvcrn9t4qu4,
  invoice_showing_distinct_transactions_text: Copy of invoice #1244 showing two transactions,
  customer_communication_file: file_jmbfgkjromvcrn9t4qu4,
  customer_communication_text: Copy of an email exchange with the cardholder,
  refund_or_cancellation_policy_file: file_jmbfgkjromvcrn9t4qu4,
  refund_or_cancellation_policy_text: Copy of the refund policy,
  recurring_transaction_agreement_file: file_jmbfgkjromvcrn9t4qu4,
  recurring_transaction_agreement_text: Copy of the recurring transaction agreement,
  additional_evidence_file: file_jmbfgkjromvcrn9t4qu4,
  additional_evidence_text: Scanned document,
  proof_of_delivery_or_service_date_file: file_jmbfgkjromvcrn9t4qu4,
  proof_of_delivery_or_service_date_text: Copy of the customer receipt showing the merchandise was delivered on 2018-12-20
)
```

