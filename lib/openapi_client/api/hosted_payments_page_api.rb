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
  class HostedPaymentsPageApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Hosted Payments Page session
    # Create a Hosted Payments Page session and pass through all the payment information, like the amount, currency, country and reference.  To get started with our Hosted Payments Page, contact your Solutions Engineer or integration@checkout.com. 
    # @param hosted_payments_request [HostedPaymentsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [HostedPaymentsResponse]
    def create_a_hosted_payments_session(hosted_payments_request, opts = {})
      data, _status_code, _headers = create_a_hosted_payments_session_with_http_info(hosted_payments_request, opts)
      data
    end

    # Create a Hosted Payments Page session
    # Create a Hosted Payments Page session and pass through all the payment information, like the amount, currency, country and reference.  To get started with our Hosted Payments Page, contact your Solutions Engineer or integration@checkout.com. 
    # @param hosted_payments_request [HostedPaymentsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(HostedPaymentsResponse, Integer, Hash)>] HostedPaymentsResponse data, response status code and response headers
    def create_a_hosted_payments_session_with_http_info(hosted_payments_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostedPaymentsPageApi.create_a_hosted_payments_session ...'
      end
      # verify the required parameter 'hosted_payments_request' is set
      if @api_client.config.client_side_validation && hosted_payments_request.nil?
        fail ArgumentError, "Missing the required parameter 'hosted_payments_request' when calling HostedPaymentsPageApi.create_a_hosted_payments_session"
      end
      # resource path
      local_var_path = '/hosted-payments'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(hosted_payments_request)

      # return_type
      return_type = opts[:debug_return_type] || 'HostedPaymentsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiSecretKey']

      new_options = opts.merge(
        :operation => :"HostedPaymentsPageApi.create_a_hosted_payments_session",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostedPaymentsPageApi#create_a_hosted_payments_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end