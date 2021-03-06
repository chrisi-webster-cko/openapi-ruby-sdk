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
  # A network token payment source
  class Model05PaymentRequestNetworkTokenSource < PaymentRequestSource
    # The network token PAN
    attr_accessor :token

    # The expiry month of the token
    attr_accessor :expiry_month

    # The expiry year of the token
    attr_accessor :expiry_year

    # The type of token
    attr_accessor :token_type

    # The Base64 encoded cryptographic identifier (TAVV) used by card schemes to validate the token verification result. Optional if `previous_payment_id` is specified and `3ds.enabled` is false
    attr_accessor :cryptogram

    # The Electronic Commerce Indicator (ECI) security level associated with the token. Optional if `previous_payment_id` is specified and `3ds.enabled` is false 
    attr_accessor :eci

    # This must be set to `true` for payments that use <a href=\"https://docs.checkout.com/quickstart/use-an-existing-card/stored-card-details\" target=\"blank\">stored card details</a>
    attr_accessor :stored

    # The customer's name
    attr_accessor :name

    # The card verification value/code. 3 digits, except for Amex (4 digits)
    attr_accessor :cvv

    # The customer's billing address
    attr_accessor :billing_address

    # The customer's phone number
    attr_accessor :phone

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
        :'token' => :'token',
        :'expiry_month' => :'expiry_month',
        :'expiry_year' => :'expiry_year',
        :'token_type' => :'token_type',
        :'cryptogram' => :'cryptogram',
        :'eci' => :'eci',
        :'stored' => :'stored',
        :'name' => :'name',
        :'cvv' => :'cvv',
        :'billing_address' => :'billing_address',
        :'phone' => :'phone'
      }
    end

    # Returns all the JSON keys this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attributes
      attribute_map.values.concat(superclass.acceptable_attributes)
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'token' => :'String',
        :'expiry_month' => :'Integer',
        :'expiry_year' => :'Integer',
        :'token_type' => :'String',
        :'cryptogram' => :'String',
        :'eci' => :'String',
        :'stored' => :'Boolean',
        :'name' => :'String',
        :'cvv' => :'String',
        :'billing_address' => :'Address',
        :'phone' => :'PhoneNumber'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'05PaymentRequestNetworkTokenSourceAllOf',
      :'PaymentRequestSource'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Model05PaymentRequestNetworkTokenSource` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Model05PaymentRequestNetworkTokenSource`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.key?(:'expiry_month')
        self.expiry_month = attributes[:'expiry_month']
      end

      if attributes.key?(:'expiry_year')
        self.expiry_year = attributes[:'expiry_year']
      end

      if attributes.key?(:'token_type')
        self.token_type = attributes[:'token_type']
      end

      if attributes.key?(:'cryptogram')
        self.cryptogram = attributes[:'cryptogram']
      end

      if attributes.key?(:'eci')
        self.eci = attributes[:'eci']
      end

      if attributes.key?(:'stored')
        self.stored = attributes[:'stored']
      else
        self.stored = false
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'cvv')
        self.cvv = attributes[:'cvv']
      end

      if attributes.key?(:'billing_address')
        self.billing_address = attributes[:'billing_address']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @token.nil?
        invalid_properties.push('invalid value for "token", token cannot be nil.')
      end

      if @expiry_month.nil?
        invalid_properties.push('invalid value for "expiry_month", expiry_month cannot be nil.')
      end

      if @expiry_month < 1
        invalid_properties.push('invalid value for "expiry_month", must be greater than or equal to 1.')
      end

      if @expiry_year.nil?
        invalid_properties.push('invalid value for "expiry_year", expiry_year cannot be nil.')
      end

      if @token_type.nil?
        invalid_properties.push('invalid value for "token_type", token_type cannot be nil.')
      end

      if @cryptogram.nil?
        invalid_properties.push('invalid value for "cryptogram", cryptogram cannot be nil.')
      end

      if @cryptogram.to_s.length > 50
        invalid_properties.push('invalid value for "cryptogram", the character length must be smaller than or equal to 50.')
      end

      if @eci.nil?
        invalid_properties.push('invalid value for "eci", eci cannot be nil.')
      end

      if @eci.to_s.length > 2
        invalid_properties.push('invalid value for "eci", the character length must be smaller than or equal to 2.')
      end

      if !@cvv.nil? && @cvv.to_s.length > 4
        invalid_properties.push('invalid value for "cvv", the character length must be smaller than or equal to 4.')
      end

      if !@cvv.nil? && @cvv.to_s.length < 3
        invalid_properties.push('invalid value for "cvv", the character length must be great than or equal to 3.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @token.nil?
      return false if @expiry_month.nil?
      return false if @expiry_month < 1
      return false if @expiry_year.nil?
      return false if @token_type.nil?
      token_type_validator = EnumAttributeValidator.new('String', ["vts", "mdes", "applepay", "googlepay"])
      return false unless token_type_validator.valid?(@token_type)
      return false if @cryptogram.nil?
      return false if @cryptogram.to_s.length > 50
      return false if @eci.nil?
      return false if @eci.to_s.length > 2
      return false if !@cvv.nil? && @cvv.to_s.length > 4
      return false if !@cvv.nil? && @cvv.to_s.length < 3
      true && super
    end

    # Custom attribute writer method with validation
    # @param [Object] expiry_month Value to be assigned
    def expiry_month=(expiry_month)
      if expiry_month.nil?
        fail ArgumentError, 'expiry_month cannot be nil'
      end

      if expiry_month < 1
        fail ArgumentError, 'invalid value for "expiry_month", must be greater than or equal to 1.'
      end

      @expiry_month = expiry_month
    end

    # Custom attribute writer method with validation
    # @param [Object] expiry_year Value to be assigned
    def expiry_year=(expiry_year)
      if expiry_year.nil?
        fail ArgumentError, 'expiry_year cannot be nil'
      end

      @expiry_year = expiry_year
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] token_type Object to be assigned
    def token_type=(token_type)
      validator = EnumAttributeValidator.new('String', ["vts", "mdes", "applepay", "googlepay"])
      unless validator.valid?(token_type)
        fail ArgumentError, "invalid value for \"token_type\", must be one of #{validator.allowable_values}."
      end
      @token_type = token_type
    end

    # Custom attribute writer method with validation
    # @param [Object] cryptogram Value to be assigned
    def cryptogram=(cryptogram)
      if cryptogram.nil?
        fail ArgumentError, 'cryptogram cannot be nil'
      end

      if cryptogram.to_s.length > 50
        fail ArgumentError, 'invalid value for "cryptogram", the character length must be smaller than or equal to 50.'
      end

      @cryptogram = cryptogram
    end

    # Custom attribute writer method with validation
    # @param [Object] eci Value to be assigned
    def eci=(eci)
      if eci.nil?
        fail ArgumentError, 'eci cannot be nil'
      end

      if eci.to_s.length > 2
        fail ArgumentError, 'invalid value for "eci", the character length must be smaller than or equal to 2.'
      end

      @eci = eci
    end

    # Custom attribute writer method with validation
    # @param [Object] cvv Value to be assigned
    def cvv=(cvv)
      if !cvv.nil? && cvv.to_s.length > 4
        fail ArgumentError, 'invalid value for "cvv", the character length must be smaller than or equal to 4.'
      end

      if !cvv.nil? && cvv.to_s.length < 3
        fail ArgumentError, 'invalid value for "cvv", the character length must be great than or equal to 3.'
      end

      @cvv = cvv
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          token == o.token &&
          expiry_month == o.expiry_month &&
          expiry_year == o.expiry_year &&
          token_type == o.token_type &&
          cryptogram == o.cryptogram &&
          eci == o.eci &&
          stored == o.stored &&
          name == o.name &&
          cvv == o.cvv &&
          billing_address == o.billing_address &&
          phone == o.phone && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [token, expiry_month, expiry_year, token_type, cryptogram, eci, stored, name, cvv, billing_address, phone].hash
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
      super(attributes)
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
      hash = super
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
