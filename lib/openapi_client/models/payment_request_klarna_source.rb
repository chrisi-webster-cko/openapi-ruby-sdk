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
  # Klarna Source
  class PaymentRequestKlarnaSource < PaymentRequestSource
    # Klarna authentication token, obtained by the merchant during client transaction authorization.
    attr_accessor :authorization_token

    # RFC 1766 customer's locale. Optional, default taken from business settings.
    attr_accessor :locale

    # ISO 3166 alpha-2 purchase country. Optional, default taken from business settings.
    attr_accessor :purchase_country

    # Allow merchant to trigger auto capturing.
    attr_accessor :auto_capture

    # Customer's billing address.   This object is passed directly to Klarna as `billing_address`,  so for the object definition use the [Klarna documentation](https://developers.klarna.com/api/#payments-api__create-a-new-order__billing_address).
    attr_accessor :billing_address

    # Customer's shipping address.   This object is passed directly to Klarna as `shipping_address`,  so for the object definition use the [Klarna documentation](https://developers.klarna.com/api/#payments-api__create-a-new-order__shipping_address).
    attr_accessor :shipping_address

    # Total tax amount of the order.
    attr_accessor :tax_amount

    # The applicable order lines.   This object is passed directly to Klarna as `order_lines`,  so for the object definition use the [Klarna documentation](https://developers.klarna.com/api/#payments-api__create-a-new-order__order_lines).
    attr_accessor :products

    # Information about the liable customer of the order.   This object is passed directly to Klarna as `customer`,  so for the object definition use the [Klarna documentation](https://developers.klarna.com/api/#payments-api__create-a-new-order__customer).
    attr_accessor :customer

    # Used for storing merchant's internal order number or other reference.  If set, will be shown on the confirmation page as \"order number\" (max 255 characters).
    attr_accessor :merchant_reference1

    # Used for storing merchant's internal order number or other reference (max 255 characters).
    attr_accessor :merchant_reference2

    # Pass through field (max 1024 characters).
    attr_accessor :merchant_data

    # Additional purchase information required for some industries.   This object is passed directly to Klarna as `attachment`,  so for the object definition use the [Klarna documentation](https://developers.klarna.com/api/#payments-api__create-a-new-order__attachment).
    attr_accessor :attachment

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'authorization_token' => :'authorization_token',
        :'locale' => :'locale',
        :'purchase_country' => :'purchase_country',
        :'auto_capture' => :'auto_capture',
        :'billing_address' => :'billing_address',
        :'shipping_address' => :'shipping_address',
        :'tax_amount' => :'tax_amount',
        :'products' => :'products',
        :'customer' => :'customer',
        :'merchant_reference1' => :'merchant_reference1',
        :'merchant_reference2' => :'merchant_reference2',
        :'merchant_data' => :'merchant_data',
        :'attachment' => :'attachment'
      }
    end

    # Returns all the JSON keys this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attributes
      attribute_map.values.concat(superclass.acceptable_attributes)
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'authorization_token' => :'String',
        :'locale' => :'String',
        :'purchase_country' => :'String',
        :'auto_capture' => :'Boolean',
        :'billing_address' => :'Object',
        :'shipping_address' => :'Object',
        :'tax_amount' => :'Integer',
        :'products' => :'Array<Object>',
        :'customer' => :'Object',
        :'merchant_reference1' => :'String',
        :'merchant_reference2' => :'String',
        :'merchant_data' => :'String',
        :'attachment' => :'Object'
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
      :'PaymentRequestKlarnaSourceAllOf',
      :'PaymentRequestSource'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::PaymentRequestKlarnaSource` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::PaymentRequestKlarnaSource`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'authorization_token')
        self.authorization_token = attributes[:'authorization_token']
      end

      if attributes.key?(:'locale')
        self.locale = attributes[:'locale']
      end

      if attributes.key?(:'purchase_country')
        self.purchase_country = attributes[:'purchase_country']
      end

      if attributes.key?(:'auto_capture')
        self.auto_capture = attributes[:'auto_capture']
      end

      if attributes.key?(:'billing_address')
        self.billing_address = attributes[:'billing_address']
      end

      if attributes.key?(:'shipping_address')
        self.shipping_address = attributes[:'shipping_address']
      end

      if attributes.key?(:'tax_amount')
        self.tax_amount = attributes[:'tax_amount']
      end

      if attributes.key?(:'products')
        if (value = attributes[:'products']).is_a?(Array)
          self.products = value
        end
      end

      if attributes.key?(:'customer')
        self.customer = attributes[:'customer']
      end

      if attributes.key?(:'merchant_reference1')
        self.merchant_reference1 = attributes[:'merchant_reference1']
      end

      if attributes.key?(:'merchant_reference2')
        self.merchant_reference2 = attributes[:'merchant_reference2']
      end

      if attributes.key?(:'merchant_data')
        self.merchant_data = attributes[:'merchant_data']
      end

      if attributes.key?(:'attachment')
        self.attachment = attributes[:'attachment']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @authorization_token.nil?
        invalid_properties.push('invalid value for "authorization_token", authorization_token cannot be nil.')
      end

      if @locale.nil?
        invalid_properties.push('invalid value for "locale", locale cannot be nil.')
      end

      if @purchase_country.nil?
        invalid_properties.push('invalid value for "purchase_country", purchase_country cannot be nil.')
      end

      if @billing_address.nil?
        invalid_properties.push('invalid value for "billing_address", billing_address cannot be nil.')
      end

      if @tax_amount.nil?
        invalid_properties.push('invalid value for "tax_amount", tax_amount cannot be nil.')
      end

      if @products.nil?
        invalid_properties.push('invalid value for "products", products cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @authorization_token.nil?
      return false if @locale.nil?
      return false if @purchase_country.nil?
      return false if @billing_address.nil?
      return false if @tax_amount.nil?
      return false if @products.nil?
      true && super
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          authorization_token == o.authorization_token &&
          locale == o.locale &&
          purchase_country == o.purchase_country &&
          auto_capture == o.auto_capture &&
          billing_address == o.billing_address &&
          shipping_address == o.shipping_address &&
          tax_amount == o.tax_amount &&
          products == o.products &&
          customer == o.customer &&
          merchant_reference1 == o.merchant_reference1 &&
          merchant_reference2 == o.merchant_reference2 &&
          merchant_data == o.merchant_data &&
          attachment == o.attachment && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [authorization_token, locale, purchase_country, auto_capture, billing_address, shipping_address, tax_amount, products, customer, merchant_reference1, merchant_reference2, merchant_data, attachment].hash
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
