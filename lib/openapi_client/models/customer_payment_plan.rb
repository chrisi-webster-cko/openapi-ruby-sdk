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
  class CustomerPaymentPlan
    attr_accessor :id

    attr_accessor :customer_plan_id

    attr_accessor :card_id

    attr_accessor :customer_id

    attr_accessor :name

    attr_accessor :plan_track_id

    attr_accessor :auto_cap_time

    attr_accessor :value

    attr_accessor :currency

    attr_accessor :cycle

    attr_accessor :recurring_count

    attr_accessor :recurring_count_left

    attr_accessor :total_collected_value

    attr_accessor :total_collected_count

    attr_accessor :current_recurring_status

    attr_accessor :start_date

    attr_accessor :previous_recurring_date

    attr_accessor :next_recurring_date

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'customer_plan_id' => :'customer_plan_id',
        :'card_id' => :'card_id',
        :'customer_id' => :'customer_id',
        :'name' => :'name',
        :'plan_track_id' => :'plan_track_id',
        :'auto_cap_time' => :'auto_cap_time',
        :'value' => :'value',
        :'currency' => :'currency',
        :'cycle' => :'cycle',
        :'recurring_count' => :'recurring_count',
        :'recurring_count_left' => :'recurring_count_left',
        :'total_collected_value' => :'total_collected_value',
        :'total_collected_count' => :'total_collected_count',
        :'current_recurring_status' => :'current_recurring_status',
        :'start_date' => :'start_date',
        :'previous_recurring_date' => :'previous_recurring_date',
        :'next_recurring_date' => :'next_recurring_date'
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
        :'customer_plan_id' => :'String',
        :'card_id' => :'String',
        :'customer_id' => :'String',
        :'name' => :'String',
        :'plan_track_id' => :'String',
        :'auto_cap_time' => :'String',
        :'value' => :'Integer',
        :'currency' => :'String',
        :'cycle' => :'String',
        :'recurring_count' => :'Integer',
        :'recurring_count_left' => :'Integer',
        :'total_collected_value' => :'Integer',
        :'total_collected_count' => :'Integer',
        :'current_recurring_status' => :'Integer',
        :'start_date' => :'String',
        :'previous_recurring_date' => :'String',
        :'next_recurring_date' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::CustomerPaymentPlan` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::CustomerPaymentPlan`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'customer_plan_id')
        self.customer_plan_id = attributes[:'customer_plan_id']
      end

      if attributes.key?(:'card_id')
        self.card_id = attributes[:'card_id']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'plan_track_id')
        self.plan_track_id = attributes[:'plan_track_id']
      end

      if attributes.key?(:'auto_cap_time')
        self.auto_cap_time = attributes[:'auto_cap_time']
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'cycle')
        self.cycle = attributes[:'cycle']
      end

      if attributes.key?(:'recurring_count')
        self.recurring_count = attributes[:'recurring_count']
      end

      if attributes.key?(:'recurring_count_left')
        self.recurring_count_left = attributes[:'recurring_count_left']
      end

      if attributes.key?(:'total_collected_value')
        self.total_collected_value = attributes[:'total_collected_value']
      end

      if attributes.key?(:'total_collected_count')
        self.total_collected_count = attributes[:'total_collected_count']
      end

      if attributes.key?(:'current_recurring_status')
        self.current_recurring_status = attributes[:'current_recurring_status']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'previous_recurring_date')
        self.previous_recurring_date = attributes[:'previous_recurring_date']
      end

      if attributes.key?(:'next_recurring_date')
        self.next_recurring_date = attributes[:'next_recurring_date']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          customer_plan_id == o.customer_plan_id &&
          card_id == o.card_id &&
          customer_id == o.customer_id &&
          name == o.name &&
          plan_track_id == o.plan_track_id &&
          auto_cap_time == o.auto_cap_time &&
          value == o.value &&
          currency == o.currency &&
          cycle == o.cycle &&
          recurring_count == o.recurring_count &&
          recurring_count_left == o.recurring_count_left &&
          total_collected_value == o.total_collected_value &&
          total_collected_count == o.total_collected_count &&
          current_recurring_status == o.current_recurring_status &&
          start_date == o.start_date &&
          previous_recurring_date == o.previous_recurring_date &&
          next_recurring_date == o.next_recurring_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, customer_plan_id, card_id, customer_id, name, plan_track_id, auto_cap_time, value, currency, cycle, recurring_count, recurring_count_left, total_collected_value, total_collected_count, current_recurring_status, start_date, previous_recurring_date, next_recurring_date].hash
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
