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
  class PaymentLinksRequest
    # The payment amount. The exact format <a href=\"https://docs.checkout.com/docs/calculating-the-value\" target=\"_blank\">depends on the currency</a>
    attr_accessor :amount

    # The three-letter <a href=\"https://docs.checkout.com/resources/codes/currency-codes\" target=\"blank\">ISO currency code</a> of the payment.<br><i>The `currency` and `billing.address.country` fields determine which payment methods are shown on the payment page</i>.
    attr_accessor :currency

    # A reference you can later use to identify this payment, such as an order number.<br><i>Required for PayPal payments<i>.
    attr_accessor :reference

    # A description of the payment
    attr_accessor :description

    # The time for which the link remains valid, in seconds.
    attr_accessor :expires_in

    attr_accessor :customer

    attr_accessor :billing

    # Details about the products in the order
    attr_accessor :products

    # Allows you to store additional information about the transaction
    attr_accessor :metadata

    attr_accessor :_3ds

    attr_accessor :risk

    # If provided, the success page will include a button that redirects your customer to the provided URL
    attr_accessor :return_url

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount' => :'amount',
        :'currency' => :'currency',
        :'reference' => :'reference',
        :'description' => :'description',
        :'expires_in' => :'expires_in',
        :'customer' => :'customer',
        :'billing' => :'billing',
        :'products' => :'products',
        :'metadata' => :'metadata',
        :'_3ds' => :'3ds',
        :'risk' => :'risk',
        :'return_url' => :'return_url'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'amount' => :'Integer',
        :'currency' => :'String',
        :'reference' => :'String',
        :'description' => :'String',
        :'expires_in' => :'Integer',
        :'customer' => :'PaymentLinksRequestCustomer',
        :'billing' => :'PaymentLinksRequestBilling',
        :'products' => :'Array<PaymentLinksRequestProducts>',
        :'metadata' => :'Hash<String, Object>',
        :'_3ds' => :'PaymentLinksRequest3ds',
        :'risk' => :'RiskRequest',
        :'return_url' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::PaymentLinksRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::PaymentLinksRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'expires_in')
        self.expires_in = attributes[:'expires_in']
      else
        self.expires_in = 86400
      end

      if attributes.key?(:'customer')
        self.customer = attributes[:'customer']
      end

      if attributes.key?(:'billing')
        self.billing = attributes[:'billing']
      end

      if attributes.key?(:'products')
        if (value = attributes[:'products']).is_a?(Array)
          self.products = value
        end
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Hash)
          self.metadata = value
        end
      end

      if attributes.key?(:'_3ds')
        self._3ds = attributes[:'_3ds']
      end

      if attributes.key?(:'risk')
        self.risk = attributes[:'risk']
      end

      if attributes.key?(:'return_url')
        self.return_url = attributes[:'return_url']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @amount < 1
        invalid_properties.push('invalid value for "amount", must be greater than or equal to 1.')
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

      if !@expires_in.nil? && @expires_in > 1209600
        invalid_properties.push('invalid value for "expires_in", must be smaller than or equal to 1209600.')
      end

      if !@expires_in.nil? && @expires_in < 1
        invalid_properties.push('invalid value for "expires_in", must be greater than or equal to 1.')
      end

      if @billing.nil?
        invalid_properties.push('invalid value for "billing", billing cannot be nil.')
      end

      if !@products.nil? && @products.length > 1000
        invalid_properties.push('invalid value for "products", number of items must be less than or equal to 1000.')
      end

      if !@products.nil? && @products.length < 1
        invalid_properties.push('invalid value for "products", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @amount.nil?
      return false if @amount < 1
      return false if @currency.nil?
      return false if @currency.to_s.length > 3
      return false if @currency.to_s.length < 3
      return false if !@expires_in.nil? && @expires_in > 1209600
      return false if !@expires_in.nil? && @expires_in < 1
      return false if @billing.nil?
      return false if !@products.nil? && @products.length > 1000
      return false if !@products.nil? && @products.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] amount Value to be assigned
    def amount=(amount)
      if amount.nil?
        fail ArgumentError, 'amount cannot be nil'
      end

      if amount < 1
        fail ArgumentError, 'invalid value for "amount", must be greater than or equal to 1.'
      end

      @amount = amount
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

    # Custom attribute writer method with validation
    # @param [Object] expires_in Value to be assigned
    def expires_in=(expires_in)
      if !expires_in.nil? && expires_in > 1209600
        fail ArgumentError, 'invalid value for "expires_in", must be smaller than or equal to 1209600.'
      end

      if !expires_in.nil? && expires_in < 1
        fail ArgumentError, 'invalid value for "expires_in", must be greater than or equal to 1.'
      end

      @expires_in = expires_in
    end

    # Custom attribute writer method with validation
    # @param [Object] products Value to be assigned
    def products=(products)
      if !products.nil? && products.length > 1000
        fail ArgumentError, 'invalid value for "products", number of items must be less than or equal to 1000.'
      end

      if !products.nil? && products.length < 1
        fail ArgumentError, 'invalid value for "products", number of items must be greater than or equal to 1.'
      end

      @products = products
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          currency == o.currency &&
          reference == o.reference &&
          description == o.description &&
          expires_in == o.expires_in &&
          customer == o.customer &&
          billing == o.billing &&
          products == o.products &&
          metadata == o.metadata &&
          _3ds == o._3ds &&
          risk == o.risk &&
          return_url == o.return_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amount, currency, reference, description, expires_in, customer, billing, products, metadata, _3ds, risk, return_url].hash
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
