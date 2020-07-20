# typed: false
require 'sorbet-runtime'
require 'sorbet-coerce'

module SorbetRails::PluckToTStruct
  extend T::Sig
  sig {
    type_parameters(:U).
    params(
      ta_struct: ITypeAssert[T.type_parameter(:U)],
      associations: T::Hash[Symbol, String],
      coerce_types: T::Boolean,
    ).
    returns(T::Array[T.type_parameter(:U)])
  }
  def pluck_to_tstruct(ta_struct, associations: {}, coerce_types: false)
    tstruct = ta_struct.get_type

    if !(tstruct < T::Struct)
      raise UnexpectedType.new("pluck_to_tstruct expects a tstruct subclass, given #{tstruct}")
    end

    tstruct_props = tstruct.props
    tstruct_keys = tstruct_props.keys
    associations_keys = associations.keys
    invalid_keys = associations_keys - tstruct_keys

    if invalid_keys.any?
      raise UnexpectedAssociations.new("Argument 'associations' contains keys that don't exist in #{tstruct}: #{invalid_keys.join(", ")}")
    end

    pluck_keys = (tstruct_keys - associations_keys) + associations.values

    # loosely based on pluck_to_hash gem
    # https://github.com/girishso/pluck_to_hash/blob/master/lib/pluck_to_hash.rb
    keys_one = pluck_keys.size == 1
    pluck(*pluck_keys).map do |row|
      row = [row] if keys_one
      value = Hash[tstruct_keys.zip(row)]
      coerce_values!(value, tstruct_props) if coerce_types
      tstruct.new(value)
    end
  end

  private

  def coerce_values!(plucked_hash, tstruct_props)
    plucked_hash.keys.each do |key|
      type = tstruct_props[key][:type]
      value = plucked_hash[key]
      plucked_hash[key] = TypeCoerce[type].new.from(value)
    end
  end

  class UnexpectedType < StandardError; end
  class UnexpectedAssociations < StandardError; end
end
