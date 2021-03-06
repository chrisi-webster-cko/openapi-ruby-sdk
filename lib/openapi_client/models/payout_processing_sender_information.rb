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
  # Allows you to send additional data required for Visa Direct Original Credit Transaction (OCT) and Mastercard Moneysend payments. Only required when sending transactions on behalf of another person or business. <a href=\"https://docs.checkout.com/payment-actions/pay-out-to-a-card/sender-data-for-payouts\" target=\"_blank\">See our documentation for specific requirements</a>.
  class PayoutProcessingSenderInformation
    # Merchant's unique customer ID.<br> <i>Alphanumeric characters only</i>.
    attr_accessor :reference

    # The account number.
    attr_accessor :account_number

    # The first name.
    attr_accessor :first_name

    # The last name.
    attr_accessor :last_name

    # The address.
    attr_accessor :address

    # The address city.
    attr_accessor :city

    # The state or province of the address country (<a href=\"https://en.wikipedia.org/wiki/ISO_3166-2\" target=\"_blank\">ISO 3166-2 code</a> of up to three alphanumeric characters).
    attr_accessor :state

    # The address country (two-letter <a href=\"https://docs.checkout.com/resources/codes/country-codes\" target=\"_blank\">ISO country code</a>).
    attr_accessor :country

    # The post/zip code.<br><i>Only required for Mastercard transactions</i>.
    attr_accessor :postal_code

    # The source of the funds.
    attr_accessor :source_of_funds

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
        :'reference' => :'reference',
        :'account_number' => :'accountNumber',
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'address' => :'address',
        :'city' => :'city',
        :'state' => :'state',
        :'country' => :'country',
        :'postal_code' => :'postalCode',
        :'source_of_funds' => :'sourceOfFunds'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'reference' => :'String',
        :'account_number' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'address' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'country' => :'String',
        :'postal_code' => :'String',
        :'source_of_funds' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::PayoutProcessingSenderInformation` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::PayoutProcessingSenderInformation`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'postal_code')
        self.postal_code = attributes[:'postal_code']
      end

      if attributes.key?(:'source_of_funds')
        self.source_of_funds = attributes[:'source_of_funds']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@reference.nil? && @reference.to_s.length > 16
        invalid_properties.push('invalid value for "reference", the character length must be smaller than or equal to 16.')
      end

      if !@account_number.nil? && @account_number.to_s.length > 19
        invalid_properties.push('invalid value for "account_number", the character length must be smaller than or equal to 19.')
      end

      if !@first_name.nil? && @first_name.to_s.length > 15
        invalid_properties.push('invalid value for "first_name", the character length must be smaller than or equal to 15.')
      end

      if !@last_name.nil? && @last_name.to_s.length > 15
        invalid_properties.push('invalid value for "last_name", the character length must be smaller than or equal to 15.')
      end

      if !@address.nil? && @address.to_s.length > 35
        invalid_properties.push('invalid value for "address", the character length must be smaller than or equal to 35.')
      end

      if !@city.nil? && @city.to_s.length > 25
        invalid_properties.push('invalid value for "city", the character length must be smaller than or equal to 25.')
      end

      if !@state.nil? && @state.to_s.length > 3
        invalid_properties.push('invalid value for "state", the character length must be smaller than or equal to 3.')
      end

      if !@country.nil? && @country.to_s.length > 2
        invalid_properties.push('invalid value for "country", the character length must be smaller than or equal to 2.')
      end

      if !@postal_code.nil? && @postal_code.to_s.length > 10
        invalid_properties.push('invalid value for "postal_code", the character length must be smaller than or equal to 10.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@reference.nil? && @reference.to_s.length > 16
      return false if !@account_number.nil? && @account_number.to_s.length > 19
      return false if !@first_name.nil? && @first_name.to_s.length > 15
      return false if !@last_name.nil? && @last_name.to_s.length > 15
      return false if !@address.nil? && @address.to_s.length > 35
      return false if !@city.nil? && @city.to_s.length > 25
      return false if !@state.nil? && @state.to_s.length > 3
      return false if !@country.nil? && @country.to_s.length > 2
      return false if !@postal_code.nil? && @postal_code.to_s.length > 10
      source_of_funds_validator = EnumAttributeValidator.new('String', ["Credit", "Debit", "Prepaid", "DepositAccount", "MobileMoneyAccount", "Cash"])
      return false unless source_of_funds_validator.valid?(@source_of_funds)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] reference Value to be assigned
    def reference=(reference)
      if !reference.nil? && reference.to_s.length > 16
        fail ArgumentError, 'invalid value for "reference", the character length must be smaller than or equal to 16.'
      end

      @reference = reference
    end

    # Custom attribute writer method with validation
    # @param [Object] account_number Value to be assigned
    def account_number=(account_number)
      if !account_number.nil? && account_number.to_s.length > 19
        fail ArgumentError, 'invalid value for "account_number", the character length must be smaller than or equal to 19.'
      end

      @account_number = account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if !first_name.nil? && first_name.to_s.length > 15
        fail ArgumentError, 'invalid value for "first_name", the character length must be smaller than or equal to 15.'
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if !last_name.nil? && last_name.to_s.length > 15
        fail ArgumentError, 'invalid value for "last_name", the character length must be smaller than or equal to 15.'
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] address Value to be assigned
    def address=(address)
      if !address.nil? && address.to_s.length > 35
        fail ArgumentError, 'invalid value for "address", the character length must be smaller than or equal to 35.'
      end

      @address = address
    end

    # Custom attribute writer method with validation
    # @param [Object] city Value to be assigned
    def city=(city)
      if !city.nil? && city.to_s.length > 25
        fail ArgumentError, 'invalid value for "city", the character length must be smaller than or equal to 25.'
      end

      @city = city
    end

    # Custom attribute writer method with validation
    # @param [Object] state Value to be assigned
    def state=(state)
      if !state.nil? && state.to_s.length > 3
        fail ArgumentError, 'invalid value for "state", the character length must be smaller than or equal to 3.'
      end

      @state = state
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)
      if !country.nil? && country.to_s.length > 2
        fail ArgumentError, 'invalid value for "country", the character length must be smaller than or equal to 2.'
      end

      @country = country
    end

    # Custom attribute writer method with validation
    # @param [Object] postal_code Value to be assigned
    def postal_code=(postal_code)
      if !postal_code.nil? && postal_code.to_s.length > 10
        fail ArgumentError, 'invalid value for "postal_code", the character length must be smaller than or equal to 10.'
      end

      @postal_code = postal_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_of_funds Object to be assigned
    def source_of_funds=(source_of_funds)
      validator = EnumAttributeValidator.new('String', ["Credit", "Debit", "Prepaid", "DepositAccount", "MobileMoneyAccount", "Cash"])
      unless validator.valid?(source_of_funds)
        fail ArgumentError, "invalid value for \"source_of_funds\", must be one of #{validator.allowable_values}."
      end
      @source_of_funds = source_of_funds
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          reference == o.reference &&
          account_number == o.account_number &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          address == o.address &&
          city == o.city &&
          state == o.state &&
          country == o.country &&
          postal_code == o.postal_code &&
          source_of_funds == o.source_of_funds
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [reference, account_number, first_name, last_name, address, city, state, country, postal_code, source_of_funds].hash
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
