=begin
#Checkout.com API Reference

## Introduction Checkout.com provides a collection of APIs that enable you to process and manage payments.    Our APIs accept and return JSON in the HTTP body and return HTTP response codes to indicate errors. You can consume the APIs directly using your favorite HTTP/REST library or make use of one of our <a href=\"https://docs.checkout.com/quickstart/integrate/sdks\" target=\"_blank\">SDKs</a>.    Our unified payments API allows you to accept payments from cards, digital wallets and the most popular alternative payment methods, as well as pay out to a variety of destinations, all using the same integration.  And with our webhook management, events and disputes APIs, you can keep on top of your transactions and react to any chargebacks, keeping your business running smoothly. # Authentication When you sign up for an account, you are given a secret and public API key pair. You authenticate with our API by providing the appropriate key in the request Authorization header.  Never share your secret keys. Keep them guarded and secure.   <!-- ReDoc-Inject: <security-definitions> --> 

The version of the OpenAPI document: 1.0.0
Contact: support@checkout.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

require 'cgi'

module OpenapiClient
  class ReconciliationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get CSV payments report
    # In addition to the JSON format returned by the `reporting/payments` endpoint, you can also download a CSV report containing the same data. Learn more about <a href=\"https://docs.checkout.com/reporting-and-insights/reconciliation-api/payments-endpoint#Paymentsendpoint-HowtoreadtheCSVfile\" target=\"_blank\">how to read your CSV report</a>.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from Date and time from which to search for payments
    # @option opts [Time] :to Date and time until which to search for payments
    # @return [nil]
    def get_csv_payments_report(opts = {})
      get_csv_payments_report_with_http_info(opts)
      nil
    end

    # Get CSV payments report
    # In addition to the JSON format returned by the &#x60;reporting/payments&#x60; endpoint, you can also download a CSV report containing the same data. Learn more about &lt;a href&#x3D;\&quot;https://docs.checkout.com/reporting-and-insights/reconciliation-api/payments-endpoint#Paymentsendpoint-HowtoreadtheCSVfile\&quot; target&#x3D;\&quot;_blank\&quot;&gt;how to read your CSV report&lt;/a&gt;.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from Date and time from which to search for payments
    # @option opts [Time] :to Date and time until which to search for payments
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def get_csv_payments_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReconciliationApi.get_csv_payments_report ...'
      end
      # resource path
      local_var_path = '/reporting/payments/download'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiSecretKey']

      new_options = opts.merge(
        :operation => :"ReconciliationApi.get_csv_payments_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReconciliationApi#get_csv_payments_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CSV single statement report
    # Downloads a CSV statement report containing all of the data related to a specific statement, based on the statement's identifier.
    # @param statement_id [String] The unique statement identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_csv_single_statement_report(statement_id, opts = {})
      get_csv_single_statement_report_with_http_info(statement_id, opts)
      nil
    end

    # Get CSV single statement report
    # Downloads a CSV statement report containing all of the data related to a specific statement, based on the statement&#39;s identifier.
    # @param statement_id [String] The unique statement identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def get_csv_single_statement_report_with_http_info(statement_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReconciliationApi.get_csv_single_statement_report ...'
      end
      # verify the required parameter 'statement_id' is set
      if @api_client.config.client_side_validation && statement_id.nil?
        fail ArgumentError, "Missing the required parameter 'statement_id' when calling ReconciliationApi.get_csv_single_statement_report"
      end
      # resource path
      local_var_path = '/reporting/statements/{StatementId}/payments/download'.sub('{' + 'StatementId' + '}', CGI.escape(statement_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiSecretKey']

      new_options = opts.merge(
        :operation => :"ReconciliationApi.get_csv_single_statement_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReconciliationApi#get_csv_single_statement_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CSV statements report
    # In addition to the JSON format returned by the `reporting/statements` endpoint, you can also download a CSV report containing the same data.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_csv_statements_report(opts = {})
      get_csv_statements_report_with_http_info(opts)
      nil
    end

    # Get CSV statements report
    # In addition to the JSON format returned by the &#x60;reporting/statements&#x60; endpoint, you can also download a CSV report containing the same data.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def get_csv_statements_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReconciliationApi.get_csv_statements_report ...'
      end
      # resource path
      local_var_path = '/reporting/statements/download'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiSecretKey']

      new_options = opts.merge(
        :operation => :"ReconciliationApi.get_csv_statements_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReconciliationApi#get_csv_statements_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get JSON payments report
    # Returns a JSON report containing all payments within your specified parameters. You can reconcile the data from this report against your statements (which can be found in the <a href=\"https://hub.checkout.com/login\" target=\"_blank\">Hub</a>), the list of payments in the Hub (using the `Reference` field) or your own systems. *Note:* no payments from before 7 February 2019 at 00.00.00 UTC will appear when using the payments endpoint. To view earlier payments, please contact our support team.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from Date and time from which to search for payments
    # @option opts [Time] :to Date and time until which to search for payments
    # @option opts [String] :reference Reference of a specific payment to search for
    # @option opts [Integer] :limit Sets a limit on the number of results (default to 200)
    # @return [PaymentsReportResponse]
    def get_json_payments_report(opts = {})
      data, _status_code, _headers = get_json_payments_report_with_http_info(opts)
      data
    end

    # Get JSON payments report
    # Returns a JSON report containing all payments within your specified parameters. You can reconcile the data from this report against your statements (which can be found in the &lt;a href&#x3D;\&quot;https://hub.checkout.com/login\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Hub&lt;/a&gt;), the list of payments in the Hub (using the &#x60;Reference&#x60; field) or your own systems. *Note:* no payments from before 7 February 2019 at 00.00.00 UTC will appear when using the payments endpoint. To view earlier payments, please contact our support team.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from Date and time from which to search for payments
    # @option opts [Time] :to Date and time until which to search for payments
    # @option opts [String] :reference Reference of a specific payment to search for
    # @option opts [Integer] :limit Sets a limit on the number of results
    # @return [Array<(PaymentsReportResponse, Integer, Hash)>] PaymentsReportResponse data, response status code and response headers
    def get_json_payments_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReconciliationApi.get_json_payments_report ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 500
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ReconciliationApi.get_json_payments_report, must be smaller than or equal to 500.'
      end

      # resource path
      local_var_path = '/reporting/payments'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'reference'] = opts[:'reference'] if !opts[:'reference'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentsReportResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiSecretKey']

      new_options = opts.merge(
        :operation => :"ReconciliationApi.get_json_payments_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReconciliationApi#get_json_payments_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get JSON single payment report
    # Returns a JSON payment report containing all of the data related to a specific payment, based on the payment's identifier. *Note:* no payments from before 7 February 2019 at 00.00.00 UTC will appear when using the payments endpoint. To view earlier payments, please contact our support team.
    # @param payment_id [String] The unique payment identifier
    # @param [Hash] opts the optional parameters
    # @return [PaymentsReportResponse]
    def get_json_single_payment_report(payment_id, opts = {})
      data, _status_code, _headers = get_json_single_payment_report_with_http_info(payment_id, opts)
      data
    end

    # Get JSON single payment report
    # Returns a JSON payment report containing all of the data related to a specific payment, based on the payment&#39;s identifier. *Note:* no payments from before 7 February 2019 at 00.00.00 UTC will appear when using the payments endpoint. To view earlier payments, please contact our support team.
    # @param payment_id [String] The unique payment identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentsReportResponse, Integer, Hash)>] PaymentsReportResponse data, response status code and response headers
    def get_json_single_payment_report_with_http_info(payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReconciliationApi.get_json_single_payment_report ...'
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling ReconciliationApi.get_json_single_payment_report"
      end
      pattern = Regexp.new(/^(pay)_(\w{26})$/)
      if @api_client.config.client_side_validation && payment_id !~ pattern
        fail ArgumentError, "invalid value for 'payment_id' when calling ReconciliationApi.get_json_single_payment_report, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/reporting/payments/{paymentId}'.sub('{' + 'paymentId' + '}', CGI.escape(payment_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentsReportResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiSecretKey']

      new_options = opts.merge(
        :operation => :"ReconciliationApi.get_json_single_payment_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReconciliationApi#get_json_single_payment_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get JSON statements report
    # Returns a JSON report containing all statements within your specified parameters. Please note that the timezone for the request will be UTC.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from Date and time from which to search for statements
    # @option opts [Time] :to Date and time until which to search for statements
    # @return [StatementsReportResponse]
    def get_json_statements_report(opts = {})
      data, _status_code, _headers = get_json_statements_report_with_http_info(opts)
      data
    end

    # Get JSON statements report
    # Returns a JSON report containing all statements within your specified parameters. Please note that the timezone for the request will be UTC.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from Date and time from which to search for statements
    # @option opts [Time] :to Date and time until which to search for statements
    # @return [Array<(StatementsReportResponse, Integer, Hash)>] StatementsReportResponse data, response status code and response headers
    def get_json_statements_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReconciliationApi.get_json_statements_report ...'
      end
      # resource path
      local_var_path = '/reporting/statements'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'StatementsReportResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiSecretKey']

      new_options = opts.merge(
        :operation => :"ReconciliationApi.get_json_statements_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReconciliationApi#get_json_statements_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
