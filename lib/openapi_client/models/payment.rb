=begin
#Checkout.com API Reference

## Introduction Checkout.com provides a collection of APIs that enable you to process and manage payments.    Our APIs accept and return JSON in the HTTP body and return HTTP response codes to indicate errors. You can consume the APIs directly using your favorite HTTP/REST library or make use of one of our <a href=\"https://docs.checkout.com/quickstart/integrate/sdks\" target=\"_blank\">SDKs</a>.    Our unified payments API allows you to accept payments from cards, digital wallets and the most popular alternative payment methods, as well as pay out to a variety of destinations, all using the same integration.  And with our webhook management, events and disputes APIs, you can keep on top of your transactions and react to any chargebacks, keeping your business running smoothly. # Authentication When you sign up for an account, you are given a secret and public API key pair. You authenticate with our API by providing the appropriate key in the request Authorization header.  Never share your secret keys. Keep them guarded and secure.   <!-- ReDoc-Inject: <security-definitions> --> 

The version of the OpenAPI document: 1.0.0
Contact: support@checkout.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

require 'date'
require 'time'

module OpenapiClient
  # Payment response
  class Payment
    # Payment unique identifier
    attr_accessor :id

    # The date/time the payment was requested
    attr_accessor :requested_on

    # The source of the payment
    attr_accessor :source

    # The destination of the payment
    attr_accessor :destination

    # The original payment amount
    attr_accessor :amount

    # The three-letter <a href=\"https://docs.checkout.com/resources/codes/currency-codes\" target=\"blank\">ISO currency code</a> of the payment
    attr_accessor :currency

    # This must be specified for card payments where the cardholder is not present (i.e., recurring or mail order / telephone order)
    attr_accessor :payment_type

    # Your reference for the payment
    attr_accessor :reference

    # A description of the payment
    attr_accessor :description

    # Whether the payment was successful
    attr_accessor :approved

    # The status of the payment
    attr_accessor :status

    # Provides information relating to the processing of 3D Secure payments
    attr_accessor :_3ds

    attr_accessor :risk

    attr_accessor :customer

    attr_accessor :billing_descriptor

    attr_accessor :shipping

    # The IP address used to make the payment
    attr_accessor :payment_ip

    attr_accessor :recipient

    # A set of key-value pairs that you can attach to a payment. It can be useful for storing additional information in a structured format
    attr_accessor :metadata

    # The final Electronic Commerce Indicator (ECI) security level used to authorize the payment.  Applicable for 3D Secure, digital wallets, and network token payments 
    attr_accessor :eci

    # The scheme transaction identifier 
    attr_accessor :scheme_id

    # A summary of the payment's actions,  returned when a session ID is used to get the payment details 
    attr_accessor :actions

    attr_accessor :_links

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'requested_on' => :'requested_on',
        :'source' => :'source',
        :'destination' => :'destination',
        :'amount' => :'amount',
        :'currency' => :'currency',
        :'payment_type' => :'payment_type',
        :'reference' => :'reference',
        :'description' => :'description',
        :'approved' => :'approved',
        :'status' => :'status',
        :'_3ds' => :'3ds',
        :'risk' => :'risk',
        :'customer' => :'customer',
        :'billing_descriptor' => :'billing_descriptor',
        :'shipping' => :'shipping',
        :'payment_ip' => :'payment_ip',
        :'recipient' => :'recipient',
        :'metadata' => :'metadata',
        :'eci' => :'eci',
        :'scheme_id' => :'scheme_id',
        :'actions' => :'actions',
        :'_links' => :'_links'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'requested_on' => :'Time',
        :'source' => :'PaymentResponseSource',
        :'destination' => :'PaymentResponseDestination',
        :'amount' => :'Integer',
        :'currency' => :'String',
        :'payment_type' => :'String',
        :'reference' => :'String',
        :'description' => :'String',
        :'approved' => :'Boolean',
        :'status' => :'String',
        :'_3ds' => :'Model3dsData',
        :'risk' => :'PaymentRisk',
        :'customer' => :'PaymentCustomer',
        :'billing_descriptor' => :'BillingDescriptor',
        :'shipping' => :'PaymentShipping',
        :'payment_ip' => :'String',
        :'recipient' => :'PaymentRecipient',
        :'metadata' => :'Object',
        :'eci' => :'String',
        :'scheme_id' => :'String',
        :'actions' => :'Array<PaymentActionSummary>',
        :'_links' => :'PaymentLinks'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Payment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Payment`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'requested_on')
        self.requested_on = attributes[:'requested_on']
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'destination')
        self.destination = attributes[:'destination']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'payment_type')
        self.payment_type = attributes[:'payment_type']
      else
        self.payment_type = 'Regular'
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'approved')
        self.approved = attributes[:'approved']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'_3ds')
        self._3ds = attributes[:'_3ds']
      end

      if attributes.key?(:'risk')
        self.risk = attributes[:'risk']
      end

      if attributes.key?(:'customer')
        self.customer = attributes[:'customer']
      end

      if attributes.key?(:'billing_descriptor')
        self.billing_descriptor = attributes[:'billing_descriptor']
      end

      if attributes.key?(:'shipping')
        self.shipping = attributes[:'shipping']
      end

      if attributes.key?(:'payment_ip')
        self.payment_ip = attributes[:'payment_ip']
      end

      if attributes.key?(:'recipient')
        self.recipient = attributes[:'recipient']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'eci')
        self.eci = attributes[:'eci']
      end

      if attributes.key?(:'scheme_id')
        self.scheme_id = attributes[:'scheme_id']
      end

      if attributes.key?(:'actions')
        if (value = attributes[:'actions']).is_a?(Array)
          self.actions = value
        end
      end

      if attributes.key?(:'_links')
        self._links = attributes[:'_links']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @requested_on.nil?
        invalid_properties.push('invalid value for "requested_on", requested_on cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      if @currency.to_s.length > 3
        invalid_properties.push('invalid value for "currency", the character length must be smaller than or equal to 3.')
      end

      if @currency.to_s.length < 3
        invalid_properties.push('invalid value for "currency", the character length must be great than or equal to 3.')
      end

      if @approved.nil?
        invalid_properties.push('invalid value for "approved", approved cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @_links.nil?
        invalid_properties.push('invalid value for "_links", _links cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @requested_on.nil?
      return false if @amount.nil?
      return false if @currency.nil?
      return false if @currency.to_s.length > 3
      return false if @currency.to_s.length < 3
      payment_type_validator = EnumAttributeValidator.new('String', ["Regular", "Recurring", "MOTO"])
      return false unless payment_type_validator.valid?(@payment_type)
      return false if @approved.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["Pending", "Authorized", "Card Verified", "Voided", "Partially Captured", "Captured", "Partially Refunded", "Refunded", "Declined", "Cancelled", "Paid"])
      return false unless status_validator.valid?(@status)
      return false if @_links.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] currency Value to be assigned
    def currency=(currency)
      if currency.nil?
        fail ArgumentError, 'currency cannot be nil'
      end

      if currency.to_s.length > 3
        fail ArgumentError, 'invalid value for "currency", the character length must be smaller than or equal to 3.'
      end

      if currency.to_s.length < 3
        fail ArgumentError, 'invalid value for "currency", the character length must be great than or equal to 3.'
      end

      @currency = currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_type Object to be assigned
    def payment_type=(payment_type)
      validator = EnumAttributeValidator.new('String', ["Regular", "Recurring", "MOTO"])
      unless validator.valid?(payment_type)
        fail ArgumentError, "invalid value for \"payment_type\", must be one of #{validator.allowable_values}."
      end
      @payment_type = payment_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["Pending", "Authorized", "Card Verified", "Voided", "Partially Captured", "Captured", "Partially Refunded", "Refunded", "Declined", "Cancelled", "Paid"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          requested_on == o.requested_on &&
          source == o.source &&
          destination == o.destination &&
          amount == o.amount &&
          currency == o.currency &&
          payment_type == o.payment_type &&
          reference == o.reference &&
          description == o.description &&
          approved == o.approved &&
          status == o.status &&
          _3ds == o._3ds &&
          risk == o.risk &&
          customer == o.customer &&
          billing_descriptor == o.billing_descriptor &&
          shipping == o.shipping &&
          payment_ip == o.payment_ip &&
          recipient == o.recipient &&
          metadata == o.metadata &&
          eci == o.eci &&
          scheme_id == o.scheme_id &&
          actions == o.actions &&
          _links == o._links
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, requested_on, source, destination, amount, currency, payment_type, reference, description, approved, status, _3ds, risk, customer, billing_descriptor, shipping, payment_ip, recipient, metadata, eci, scheme_id, actions, _links].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end