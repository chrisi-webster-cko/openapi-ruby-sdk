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
  # Multibanco Source
  class PaymentRequestMultibancoSource < PaymentRequestSource
    # The 2-letter ISO country code of the country in which the payment instrument is issued/operated.
    attr_accessor :payment_country

    # The account holder.
    attr_accessor :account_holder_name

    # Payment billing descriptor.
    attr_accessor :billing_descriptor

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
        :'payment_country' => :'payment_country',
        :'account_holder_name' => :'account_holder_name',
        :'billing_descriptor' => :'billing_descriptor'
      }
    end

    # Returns all the JSON keys this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attributes
      attribute_map.values.concat(superclass.acceptable_attributes)
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'payment_country' => :'String',
        :'account_holder_name' => :'String',
        :'billing_descriptor' => :'String'
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
      :'PaymentRequestMultibancoSourceAllOf',
      :'PaymentRequestSource'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::PaymentRequestMultibancoSource` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::PaymentRequestMultibancoSource`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'payment_country')
        self.payment_country = attributes[:'payment_country']
      end

      if attributes.key?(:'account_holder_name')
        self.account_holder_name = attributes[:'account_holder_name']
      end

      if attributes.key?(:'billing_descriptor')
        self.billing_descriptor = attributes[:'billing_descriptor']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @payment_country.nil?
        invalid_properties.push('invalid value for "payment_country", payment_country cannot be nil.')
      end

      if @payment_country.to_s.length > 2
        invalid_properties.push('invalid value for "payment_country", the character length must be smaller than or equal to 2.')
      end

      if @payment_country.to_s.length < 2
        invalid_properties.push('invalid value for "payment_country", the character length must be great than or equal to 2.')
      end

      if @account_holder_name.nil?
        invalid_properties.push('invalid value for "account_holder_name", account_holder_name cannot be nil.')
      end

      if @account_holder_name.to_s.length > 100
        invalid_properties.push('invalid value for "account_holder_name", the character length must be smaller than or equal to 100.')
      end

      if @account_holder_name.to_s.length < 3
        invalid_properties.push('invalid value for "account_holder_name", the character length must be great than or equal to 3.')
      end

      if !@billing_descriptor.nil? && @billing_descriptor.to_s.length > 65534
        invalid_properties.push('invalid value for "billing_descriptor", the character length must be smaller than or equal to 65534.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @payment_country.nil?
      payment_country_validator = EnumAttributeValidator.new('String', ["PT"])
      return false unless payment_country_validator.valid?(@payment_country)
      return false if @payment_country.to_s.length > 2
      return false if @payment_country.to_s.length < 2
      return false if @account_holder_name.nil?
      return false if @account_holder_name.to_s.length > 100
      return false if @account_holder_name.to_s.length < 3
      return false if !@billing_descriptor.nil? && @billing_descriptor.to_s.length > 65534
      true && super
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_country Object to be assigned
    def payment_country=(payment_country)
      validator = EnumAttributeValidator.new('String', ["PT"])
      unless validator.valid?(payment_country)
        fail ArgumentError, "invalid value for \"payment_country\", must be one of #{validator.allowable_values}."
      end
      @payment_country = payment_country
    end

    # Custom attribute writer method with validation
    # @param [Object] account_holder_name Value to be assigned
    def account_holder_name=(account_holder_name)
      if account_holder_name.nil?
        fail ArgumentError, 'account_holder_name cannot be nil'
      end

      if account_holder_name.to_s.length > 100
        fail ArgumentError, 'invalid value for "account_holder_name", the character length must be smaller than or equal to 100.'
      end

      if account_holder_name.to_s.length < 3
        fail ArgumentError, 'invalid value for "account_holder_name", the character length must be great than or equal to 3.'
      end

      @account_holder_name = account_holder_name
    end

    # Custom attribute writer method with validation
    # @param [Object] billing_descriptor Value to be assigned
    def billing_descriptor=(billing_descriptor)
      if !billing_descriptor.nil? && billing_descriptor.to_s.length > 65534
        fail ArgumentError, 'invalid value for "billing_descriptor", the character length must be smaller than or equal to 65534.'
      end

      @billing_descriptor = billing_descriptor
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          payment_country == o.payment_country &&
          account_holder_name == o.account_holder_name &&
          billing_descriptor == o.billing_descriptor && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [payment_country, account_holder_name, billing_descriptor].hash
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
