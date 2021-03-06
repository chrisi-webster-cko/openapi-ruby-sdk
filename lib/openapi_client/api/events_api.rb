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
  class EventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve event
    # Retrieves the event with the specified identifier string. The event `data` includes the full event details, the schema of which will vary based on the `type`. 
    # @param event_id [String] The event identifier
    # @param [Hash] opts the optional parameters
    # @return [EventObject]
    def retrieve_event(event_id, opts = {})
      data, _status_code, _headers = retrieve_event_with_http_info(event_id, opts)
      data
    end

    # Retrieve event
    # Retrieves the event with the specified identifier string. The event &#x60;data&#x60; includes the full event details, the schema of which will vary based on the &#x60;type&#x60;. 
    # @param event_id [String] The event identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(EventObject, Integer, Hash)>] EventObject data, response status code and response headers
    def retrieve_event_with_http_info(event_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.retrieve_event ...'
      end
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling EventsApi.retrieve_event"
      end
      pattern = Regexp.new(/^(evt)_(\w{26})$/)
      if @api_client.config.client_side_validation && event_id !~ pattern
        fail ArgumentError, "invalid value for 'event_id' when calling EventsApi.retrieve_event, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/events/{eventId}'.sub('{' + 'eventId' + '}', CGI.escape(event_id.to_s))

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
      return_type = opts[:debug_return_type] || 'EventObject'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiSecretKey']

      new_options = opts.merge(
        :operation => :"EventsApi.retrieve_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#retrieve_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve event notification
    # Retrieves the attempts for a specific event notification
    # @param event_id [String] The event identifier
    # @param notification_id [String] The notification identifier
    # @param [Hash] opts the optional parameters
    # @return [Notification]
    def retrieve_event_notification(event_id, notification_id, opts = {})
      data, _status_code, _headers = retrieve_event_notification_with_http_info(event_id, notification_id, opts)
      data
    end

    # Retrieve event notification
    # Retrieves the attempts for a specific event notification
    # @param event_id [String] The event identifier
    # @param notification_id [String] The notification identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(Notification, Integer, Hash)>] Notification data, response status code and response headers
    def retrieve_event_notification_with_http_info(event_id, notification_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.retrieve_event_notification ...'
      end
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling EventsApi.retrieve_event_notification"
      end
      pattern = Regexp.new(/^(evt)_(\w{26})$/)
      if @api_client.config.client_side_validation && event_id !~ pattern
        fail ArgumentError, "invalid value for 'event_id' when calling EventsApi.retrieve_event_notification, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'notification_id' is set
      if @api_client.config.client_side_validation && notification_id.nil?
        fail ArgumentError, "Missing the required parameter 'notification_id' when calling EventsApi.retrieve_event_notification"
      end
      pattern = Regexp.new(/^(ntf)_(\w{26})$/)
      if @api_client.config.client_side_validation && notification_id !~ pattern
        fail ArgumentError, "invalid value for 'notification_id' when calling EventsApi.retrieve_event_notification, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/events/{eventId}/notifications/{notificationId}'.sub('{' + 'eventId' + '}', CGI.escape(event_id.to_s)).sub('{' + 'notificationId' + '}', CGI.escape(notification_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Notification'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiSecretKey']

      new_options = opts.merge(
        :operation => :"EventsApi.retrieve_event_notification",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#retrieve_event_notification\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve event types
    # Retrieve a list of event types grouped by their respective version that you can configure on your webhooks.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :version The API version for which you want to retrieve the event types. Set this to &#x60;1.0&#x60; for the legacy API or &#x60;2.0&#x60; for the Unified Payments API. If no version is specified, event types for both versions will be returned.
    # @return [Array<EventTypesObject>]
    def retrieve_event_types(opts = {})
      data, _status_code, _headers = retrieve_event_types_with_http_info(opts)
      data
    end

    # Retrieve event types
    # Retrieve a list of event types grouped by their respective version that you can configure on your webhooks.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :version The API version for which you want to retrieve the event types. Set this to &#x60;1.0&#x60; for the legacy API or &#x60;2.0&#x60; for the Unified Payments API. If no version is specified, event types for both versions will be returned.
    # @return [Array<(Array<EventTypesObject>, Integer, Hash)>] Array<EventTypesObject> data, response status code and response headers
    def retrieve_event_types_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.retrieve_event_types ...'
      end
      # resource path
      local_var_path = '/event-types'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'version'] = opts[:'version'] if !opts[:'version'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<EventTypesObject>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiSecretKey']

      new_options = opts.merge(
        :operation => :"EventsApi.retrieve_event_types",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#retrieve_event_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retry all webhooks
    # Retries all webhook notifications configured for the specified event
    # @param event_id [String] The event identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def retry_all_webhooks(event_id, opts = {})
      retry_all_webhooks_with_http_info(event_id, opts)
      nil
    end

    # Retry all webhooks
    # Retries all webhook notifications configured for the specified event
    # @param event_id [String] The event identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def retry_all_webhooks_with_http_info(event_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.retry_all_webhooks ...'
      end
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling EventsApi.retry_all_webhooks"
      end
      pattern = Regexp.new(/^(evt)_(\w{26})$/)
      if @api_client.config.client_side_validation && event_id !~ pattern
        fail ArgumentError, "invalid value for 'event_id' when calling EventsApi.retry_all_webhooks, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/events/{eventId}/webhooks/retry'.sub('{' + 'eventId' + '}', CGI.escape(event_id.to_s))

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
        :operation => :"EventsApi.retry_all_webhooks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#retry_all_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retry webhook
    # Retries a specific webhook notification for the given event
    # @param event_id [String] The event identifier
    # @param webhook_id [String] The webhook identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def retry_webhook(event_id, webhook_id, opts = {})
      retry_webhook_with_http_info(event_id, webhook_id, opts)
      nil
    end

    # Retry webhook
    # Retries a specific webhook notification for the given event
    # @param event_id [String] The event identifier
    # @param webhook_id [String] The webhook identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def retry_webhook_with_http_info(event_id, webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.retry_webhook ...'
      end
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling EventsApi.retry_webhook"
      end
      pattern = Regexp.new(/^(evt)_(\w{26})$/)
      if @api_client.config.client_side_validation && event_id !~ pattern
        fail ArgumentError, "invalid value for 'event_id' when calling EventsApi.retry_webhook, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling EventsApi.retry_webhook"
      end
      pattern = Regexp.new(/^(wh)_(\w{32})$/)
      if @api_client.config.client_side_validation && webhook_id !~ pattern
        fail ArgumentError, "invalid value for 'webhook_id' when calling EventsApi.retry_webhook, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/events/{eventId}/webhooks/{webhookId}/retry'.sub('{' + 'eventId' + '}', CGI.escape(event_id.to_s)).sub('{' + 'webhookId' + '}', CGI.escape(webhook_id.to_s))

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
        :operation => :"EventsApi.retry_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#retry_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
