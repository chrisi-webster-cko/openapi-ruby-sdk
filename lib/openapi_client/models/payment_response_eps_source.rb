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
  # Eps Source
  class PaymentResponseEpsSource < PaymentResponseSource
    # Purpose of the payment as appearing on customer's bank statement.
    attr_accessor :purpose

    # Bank Identifier Code (BIC). It can be exactly 8 characters or 11 characters long.
    attr_accessor :bic

    # International Bank Account Number (IBAN) without whitespaces.
    attr_accessor :iban

    # Account holder information.
    attr_accessor :account_holder

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'purpose' => :'purpose',
        :'bic' => :'bic',
        :'iban' => :'iban',
        :'account_holder' => :'account_holder'
      }
    end

    # Returns all the JSON keys this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attributes
      attribute_map.values.concat(superclass.acceptable_attributes)
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'purpose' => :'String',
        :'bic' => :'String',
        :'iban' => :'String',
        :'account_holder' => :'String'
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
      :'PaymentResponseEpsSourceAllOf',
      :'PaymentResponseSource'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::PaymentResponseEpsSource` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::PaymentResponseEpsSource`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'purpose')
        self.purpose = attributes[:'purpose']
      end

      if attributes.key?(:'bic')
        self.bic = attributes[:'bic']
      end

      if attributes.key?(:'iban')
        self.iban = attributes[:'iban']
      end

      if attributes.key?(:'account_holder')
        self.account_holder = attributes[:'account_holder']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if !@purpose.nil? && @purpose.to_s.length > 27
        invalid_properties.push('invalid value for "purpose", the character length must be smaller than or equal to 27.')
      end

      if !@bic.nil? && @bic.to_s.length > 11
        invalid_properties.push('invalid value for "bic", the character length must be smaller than or equal to 11.')
      end

      if !@iban.nil? && @iban.to_s.length > 34
        invalid_properties.push('invalid value for "iban", the character length must be smaller than or equal to 34.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@purpose.nil? && @purpose.to_s.length > 27
      return false if !@bic.nil? && @bic.to_s.length > 11
      return false if !@iban.nil? && @iban.to_s.length > 34
      true && super
    end

    # Custom attribute writer method with validation
    # @param [Object] purpose Value to be assigned
    def purpose=(purpose)
      if !purpose.nil? && purpose.to_s.length > 27
        fail ArgumentError, 'invalid value for "purpose", the character length must be smaller than or equal to 27.'
      end

      @purpose = purpose
    end

    # Custom attribute writer method with validation
    # @param [Object] bic Value to be assigned
    def bic=(bic)
      if !bic.nil? && bic.to_s.length > 11
        fail ArgumentError, 'invalid value for "bic", the character length must be smaller than or equal to 11.'
      end

      @bic = bic
    end

    # Custom attribute writer method with validation
    # @param [Object] iban Value to be assigned
    def iban=(iban)
      if !iban.nil? && iban.to_s.length > 34
        fail ArgumentError, 'invalid value for "iban", the character length must be smaller than or equal to 34.'
      end

      @iban = iban
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          purpose == o.purpose &&
          bic == o.bic &&
          iban == o.iban &&
          account_holder == o.account_holder && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [purpose, bic, iban, account_holder].hash
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
