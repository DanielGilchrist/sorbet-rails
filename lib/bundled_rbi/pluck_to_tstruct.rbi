# typed: strong

module SorbetRails::PluckToTStruct
  extend T::Sig
  sig {
    type_parameters(:U).
    params(
      ta_struct: ITypeAssert[T.type_parameter(:U)],
      associations: T::Hash[Symbol, String],
      coerce_types: T::Boolean
    ).
    returns(T::Array[T.type_parameter(:U)])
  }
  def pluck_to_tstruct(ta_struct, associations: {}, coerce_types: false); end
end

class ActiveRecord::Base
  extend SorbetRails::PluckToTStruct
end

class ActiveRecord::Relation
  include SorbetRails::PluckToTStruct
end
