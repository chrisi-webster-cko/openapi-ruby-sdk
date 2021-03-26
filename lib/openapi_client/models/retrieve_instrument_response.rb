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
  class RetrieveInstrumentResponse
    # The instrument id for the retrieved instrument
    attr_accessor :id

    # The instrument type
    attr_accessor :type

    # A token that can uniquely identify this card across all customers
    attr_accessor :fingerprint

    # The expiry month
    attr_accessor :expiry_month

    # The expiry year
    attr_accessor :expiry_year

    # The name of the cardholder
    attr_accessor :name

    # The card scheme
    attr_accessor :scheme

    # The last four digits of the card number
    attr_accessor :last4

    # The card issuer's bank identification number (BIN)
    attr_accessor :bin

    # The card type
    attr_accessor :card_type

    # The card category
    attr_accessor :card_category

    # The name of the card issuer
    attr_accessor :issuer

    # The card issuer's country (<a href=\"https://docs.checkout.com/resources/codes/country-codes\" target=\"blank\">two-letter ISO code</a>)
    attr_accessor :issuer_country

    # The issuer/card scheme product identifier
    attr_accessor :product_id

    # The issuer/card scheme product type
    attr_accessor :product_type

    attr_accessor :account_holder

    attr_accessor :customer

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
        :'type' => :'type',
        :'fingerprint' => :'fingerprint',
        :'expiry_month' => :'expiry_month',
        :'expiry_year' => :'expiry_year',
        :'name' => :'name',
        :'scheme' => :'scheme',
        :'last4' => :'last4',
        :'bin' => :'bin',
        :'card_type' => :'card_type',
        :'card_category' => :'card_category',
        :'issuer' => :'issuer',
        :'issuer_country' => :'issuer_country',
        :'product_id' => :'product_id',
        :'product_type' => :'product_type',
        :'account_holder' => :'account_holder',
        :'customer' => :'customer'
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
        :'type' => :'String',
        :'fingerprint' => :'String',
        :'expiry_month' => :'Integer',
        :'expiry_year' => :'Integer',
        :'name' => :'String',
        :'scheme' => :'String',
        :'last4' => :'String',
        :'bin' => :'String',
        :'card_type' => :'String',
        :'card_category' => :'String',
        :'issuer' => :'String',
        :'issuer_country' => :'String',
        :'product_id' => :'String',
        :'product_type' => :'String',
        :'account_holder' => :'RetrieveInstrumentResponseAccountHolder',
        :'customer' => :'RetrieveInstrumentResponseCustomer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::RetrieveInstrumentResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::RetrieveInstrumentResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'fingerprint')
        self.fingerprint = attributes[:'fingerprint']
      end

      if attributes.key?(:'expiry_month')
        self.expiry_month = attributes[:'expiry_month']
      end

      if attributes.key?(:'expiry_year')
        self.expiry_year = attributes[:'expiry_year']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'scheme')
        self.scheme = attributes[:'scheme']
      end

      if attributes.key?(:'last4')
        self.last4 = attributes[:'last4']
      end

      if attributes.key?(:'bin')
        self.bin = attributes[:'bin']
      end

      if attributes.key?(:'card_type')
        self.card_type = attributes[:'card_type']
      end

      if attributes.key?(:'card_category')
        self.card_category = attributes[:'card_category']
      end

      if attributes.key?(:'issuer')
        self.issuer = attributes[:'issuer']
      end

      if attributes.key?(:'issuer_country')
        self.issuer_country = attributes[:'issuer_country']
      end

      if attributes.key?(:'product_id')
        self.product_id = attributes[:'product_id']
      end

      if attributes.key?(:'product_type')
        self.product_type = attributes[:'product_type']
      end

      if attributes.key?(:'account_holder')
        self.account_holder = attributes[:'account_holder']
      end

      if attributes.key?(:'customer')
        self.customer = attributes[:'customer']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @fingerprint.nil?
        invalid_properties.push('invalid value for "fingerprint", fingerprint cannot be nil.')
      end

      pattern = Regexp.new(/^([a-z0-9]{26})$/)
      if @fingerprint !~ pattern
        invalid_properties.push("invalid value for \"fingerprint\", must conform to the pattern #{pattern}.")
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

      if @last4.nil?
        invalid_properties.push('invalid value for "last4", last4 cannot be nil.')
      end

      if @last4.to_s.length > 4
        invalid_properties.push('invalid value for "last4", the character length must be smaller than or equal to 4.')
      end

      if @last4.to_s.length < 4
        invalid_properties.push('invalid value for "last4", the character length must be great than or equal to 4.')
      end

      if @bin.nil?
        invalid_properties.push('invalid value for "bin", bin cannot be nil.')
      end

      if !@issuer_country.nil? && @issuer_country.to_s.length > 2
        invalid_properties.push('invalid value for "issuer_country", the character length must be smaller than or equal to 2.')
      end

      if !@issuer_country.nil? && @issuer_country.to_s.length < 2
        invalid_properties.push('invalid value for "issuer_country", the character length must be great than or equal to 2.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @type.nil?
      return false if @fingerprint.nil?
      return false if @fingerprint !~ Regexp.new(/^([a-z0-9]{26})$/)
      return false if @expiry_month.nil?
      return false if @expiry_month < 1
      return false if @expiry_year.nil?
      return false if @last4.nil?
      return false if @last4.to_s.length > 4
      return false if @last4.to_s.length < 4
      return false if @bin.nil?
      card_type_validator = EnumAttributeValidator.new('String', ["Credit", "Debit", "Prepaid", "Charge"])
      return false unless card_type_validator.valid?(@card_type)
      card_category_validator = EnumAttributeValidator.new('String', ["Consumer", "Commercial"])
      return false unless card_category_validator.valid?(@card_category)
      return false if !@issuer_country.nil? && @issuer_country.to_s.length > 2
      return false if !@issuer_country.nil? && @issuer_country.to_s.length < 2
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] fingerprint Value to be assigned
    def fingerprint=(fingerprint)
      if fingerprint.nil?
        fail ArgumentError, 'fingerprint cannot be nil'
      end

      pattern = Regexp.new(/^([a-z0-9]{26})$/)
      if fingerprint !~ pattern
        fail ArgumentError, "invalid value for \"fingerprint\", must conform to the pattern #{pattern}."
      end

      @fingerprint = fingerprint
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

    # Custom attribute writer method with validation
    # @param [Object] last4 Value to be assigned
    def last4=(last4)
      if last4.nil?
        fail ArgumentError, 'last4 cannot be nil'
      end

      if last4.to_s.length > 4
        fail ArgumentError, 'invalid value for "last4", the character length must be smaller than or equal to 4.'
      end

      if last4.to_s.length < 4
        fail ArgumentError, 'invalid value for "last4", the character length must be great than or equal to 4.'
      end

      @last4 = last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card_type Object to be assigned
    def card_type=(card_type)
      validator = EnumAttributeValidator.new('String', ["Credit", "Debit", "Prepaid", "Charge"])
      unless validator.valid?(card_type)
        fail ArgumentError, "invalid value for \"card_type\", must be one of #{validator.allowable_values}."
      end
      @card_type = card_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card_category Object to be assigned
    def card_category=(card_category)
      validator = EnumAttributeValidator.new('String', ["Consumer", "Commercial"])
      unless validator.valid?(card_category)
        fail ArgumentError, "invalid value for \"card_category\", must be one of #{validator.allowable_values}."
      end
      @card_category = card_category
    end

    # Custom attribute writer method with validation
    # @param [Object] issuer_country Value to be assigned
    def issuer_country=(issuer_country)
      if !issuer_country.nil? && issuer_country.to_s.length > 2
        fail ArgumentError, 'invalid value for "issuer_country", the character length must be smaller than or equal to 2.'
      end

      if !issuer_country.nil? && issuer_country.to_s.length < 2
        fail ArgumentError, 'invalid value for "issuer_country", the character length must be great than or equal to 2.'
      end

      @issuer_country = issuer_country
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          type == o.type &&
          fingerprint == o.fingerprint &&
          expiry_month == o.expiry_month &&
          expiry_year == o.expiry_year &&
          name == o.name &&
          scheme == o.scheme &&
          last4 == o.last4 &&
          bin == o.bin &&
          card_type == o.card_type &&
          card_category == o.card_category &&
          issuer == o.issuer &&
          issuer_country == o.issuer_country &&
          product_id == o.product_id &&
          product_type == o.product_type &&
          account_holder == o.account_holder &&
          customer == o.customer
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, type, fingerprint, expiry_month, expiry_year, name, scheme, last4, bin, card_type, card_category, issuer, issuer_country, product_id, product_type, account_holder, customer].hash
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
