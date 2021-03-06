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
  class Dispute
    # The dispute identifier. This is the same as the payment action ID
    attr_accessor :id

    # The reason for the dispute. [Find out more](https://docs.checkout.com/risk-management/disputes#Disputes-Disputereasonsandrecommendedevidence)
    attr_accessor :category

    # The amount that is being disputed, in the processing currency
    attr_accessor :amount

    # The processing currency
    attr_accessor :currency

    # The reason code provided by the card scheme
    attr_accessor :reason_code

    # The current status of the dispute
    attr_accessor :status

    # If the dispute is automatically resolved, `resolved_reason` will contain the reason why it was resolved
    attr_accessor :resolved_reason

    # <i>This list and the dispute categories will change over time. Your evidence logic should be informed by this field, not hard coded.</i>
    attr_accessor :relevant_evidence

    # The deadline by which to respond to the dispute. This corresponds to `received_on` + `n`, where `n` is a number of calendar days set by the scheme/acquirer
    attr_accessor :evidence_required_by

    # The date and time at which the dispute was issued
    attr_accessor :received_on

    # The date and time at which the dispute was last updated
    attr_accessor :last_update

    attr_accessor :payment

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
        :'category' => :'category',
        :'amount' => :'amount',
        :'currency' => :'currency',
        :'reason_code' => :'reason_code',
        :'status' => :'status',
        :'resolved_reason' => :'resolved_reason',
        :'relevant_evidence' => :'relevant_evidence',
        :'evidence_required_by' => :'evidence_required_by',
        :'received_on' => :'received_on',
        :'last_update' => :'last_update',
        :'payment' => :'payment',
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
        :'category' => :'String',
        :'amount' => :'Float',
        :'currency' => :'String',
        :'reason_code' => :'String',
        :'status' => :'String',
        :'resolved_reason' => :'String',
        :'relevant_evidence' => :'Array<String>',
        :'evidence_required_by' => :'String',
        :'received_on' => :'String',
        :'last_update' => :'String',
        :'payment' => :'DisputePayment',
        :'_links' => :'DisputeLinks'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Dispute` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Dispute`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'reason_code')
        self.reason_code = attributes[:'reason_code']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'resolved_reason')
        self.resolved_reason = attributes[:'resolved_reason']
      end

      if attributes.key?(:'relevant_evidence')
        if (value = attributes[:'relevant_evidence']).is_a?(Array)
          self.relevant_evidence = value
        end
      end

      if attributes.key?(:'evidence_required_by')
        self.evidence_required_by = attributes[:'evidence_required_by']
      end

      if attributes.key?(:'received_on')
        self.received_on = attributes[:'received_on']
      end

      if attributes.key?(:'last_update')
        self.last_update = attributes[:'last_update']
      end

      if attributes.key?(:'payment')
        self.payment = attributes[:'payment']
      end

      if attributes.key?(:'_links')
        self._links = attributes[:'_links']
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

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@id.nil? && @id !~ Regexp.new(/^(dsp)_(\w{22})$/)
      category_validator = EnumAttributeValidator.new('String', ["fraudulent", "unrecognized", "canceled_recurring", "product_service_not_received", "not_as_described", "credit_not_issued", "duplicate", "incorrect_amount", "general"])
      return false unless category_validator.valid?(@category)
      status_validator = EnumAttributeValidator.new('String', ["evidence_required", "evidence_under_review", "resolved", "won", "lost", "canceled", "expired", "accepted"])
      return false unless status_validator.valid?(@status)
      resolved_reason_validator = EnumAttributeValidator.new('String', ["rapid_dispute_resolution", "negative_amount", "already_refunded"])
      return false unless resolved_reason_validator.valid?(@resolved_reason)
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] category Object to be assigned
    def category=(category)
      validator = EnumAttributeValidator.new('String', ["fraudulent", "unrecognized", "canceled_recurring", "product_service_not_received", "not_as_described", "credit_not_issued", "duplicate", "incorrect_amount", "general"])
      unless validator.valid?(category)
        fail ArgumentError, "invalid value for \"category\", must be one of #{validator.allowable_values}."
      end
      @category = category
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["evidence_required", "evidence_under_review", "resolved", "won", "lost", "canceled", "expired", "accepted"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resolved_reason Object to be assigned
    def resolved_reason=(resolved_reason)
      validator = EnumAttributeValidator.new('String', ["rapid_dispute_resolution", "negative_amount", "already_refunded"])
      unless validator.valid?(resolved_reason)
        fail ArgumentError, "invalid value for \"resolved_reason\", must be one of #{validator.allowable_values}."
      end
      @resolved_reason = resolved_reason
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          category == o.category &&
          amount == o.amount &&
          currency == o.currency &&
          reason_code == o.reason_code &&
          status == o.status &&
          resolved_reason == o.resolved_reason &&
          relevant_evidence == o.relevant_evidence &&
          evidence_required_by == o.evidence_required_by &&
          received_on == o.received_on &&
          last_update == o.last_update &&
          payment == o.payment &&
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
      [id, category, amount, currency, reason_code, status, resolved_reason, relevant_evidence, evidence_required_by, received_on, last_update, payment, _links].hash
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
