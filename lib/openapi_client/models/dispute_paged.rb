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
  class DisputePaged
    # The numbers of items to return
    attr_accessor :limit

    # The number of results to skip
    attr_accessor :skip

    # The date and time from which to filter disputes, based on the dispute's `last_update` field
    attr_accessor :from

    # The date and time until which to filter disputes, based on the dispute's `last_update` field
    attr_accessor :to

    # One or more comma-separated statuses. This works like a logical *OR* operator
    attr_accessor :statuses

    # The unique identifier of the dispute
    attr_accessor :id

    # The unique identifier of the payment
    attr_accessor :payment_id

    # An optional reference (such as an order ID) that you can use later to identify the payment. Previously known as `TrackId`
    attr_accessor :payment_reference

    # The acquirer reference number (ARN) that you can use to query the issuing bank
    attr_accessor :payment_arn

    # If `true`, only returns disputes of the specific channel that the secret key is associated with. Otherwise, returns all disputes for that business
    attr_accessor :this_channel_only

    # The total number of disputes retrieved (without taking into consideration skip and limit parameters)
    attr_accessor :total_count

    # The list of disputes
    attr_accessor :data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'limit' => :'limit',
        :'skip' => :'skip',
        :'from' => :'from',
        :'to' => :'to',
        :'statuses' => :'statuses',
        :'id' => :'id',
        :'payment_id' => :'payment_id',
        :'payment_reference' => :'payment_reference',
        :'payment_arn' => :'payment_arn',
        :'this_channel_only' => :'this_channel_only',
        :'total_count' => :'total_count',
        :'data' => :'data'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'limit' => :'Integer',
        :'skip' => :'Integer',
        :'from' => :'String',
        :'to' => :'String',
        :'statuses' => :'String',
        :'id' => :'String',
        :'payment_id' => :'String',
        :'payment_reference' => :'String',
        :'payment_arn' => :'String',
        :'this_channel_only' => :'Boolean',
        :'total_count' => :'Integer',
        :'data' => :'Array<DisputeSummary>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::DisputePaged` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::DisputePaged`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.key?(:'skip')
        self.skip = attributes[:'skip']
      end

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'to')
        self.to = attributes[:'to']
      end

      if attributes.key?(:'statuses')
        self.statuses = attributes[:'statuses']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'payment_id')
        self.payment_id = attributes[:'payment_id']
      end

      if attributes.key?(:'payment_reference')
        self.payment_reference = attributes[:'payment_reference']
      end

      if attributes.key?(:'payment_arn')
        self.payment_arn = attributes[:'payment_arn']
      end

      if attributes.key?(:'this_channel_only')
        self.this_channel_only = attributes[:'this_channel_only']
      end

      if attributes.key?(:'total_count')
        self.total_count = attributes[:'total_count']
      end

      if attributes.key?(:'data')
        if (value = attributes[:'data']).is_a?(Array)
          self.data = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      pattern = Regexp.new(/^(dsp)_(\w{22})$/)
      if !@id.nil? && @id !~ pattern
        invalid_properties.push("invalid value for \"id\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^(pay)_(\w{26})$/)
      if !@payment_id.nil? && @payment_id !~ pattern
        invalid_properties.push("invalid value for \"payment_id\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@id.nil? && @id !~ Regexp.new(/^(dsp)_(\w{22})$/)
      return false if !@payment_id.nil? && @payment_id !~ Regexp.new(/^(pay)_(\w{26})$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      pattern = Regexp.new(/^(dsp)_(\w{22})$/)
      if !id.nil? && id !~ pattern
        fail ArgumentError, "invalid value for \"id\", must conform to the pattern #{pattern}."
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_id Value to be assigned
    def payment_id=(payment_id)
      pattern = Regexp.new(/^(pay)_(\w{26})$/)
      if !payment_id.nil? && payment_id !~ pattern
        fail ArgumentError, "invalid value for \"payment_id\", must conform to the pattern #{pattern}."
      end

      @payment_id = payment_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          limit == o.limit &&
          skip == o.skip &&
          from == o.from &&
          to == o.to &&
          statuses == o.statuses &&
          id == o.id &&
          payment_id == o.payment_id &&
          payment_reference == o.payment_reference &&
          payment_arn == o.payment_arn &&
          this_channel_only == o.this_channel_only &&
          total_count == o.total_count &&
          data == o.data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [limit, skip, from, to, statuses, id, payment_id, payment_reference, payment_arn, this_channel_only, total_count, data].hash
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