# This is an autogenerated file for dynamic methods in ActiveStorage::Attachment
# Please rerun bundle exec rake rails_rbi:models[ActiveStorage::Attachment] to regenerate.

# typed: strong
module ActiveStorage::Attachment::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module ActiveStorage::Attachment::GeneratedAssociationMethods
  extend T::Sig

  sig { returns(::ActiveStorage::Blob) }
  def blob; end

  sig { params(value: ::ActiveStorage::Blob).void }
  def blob=(value); end

  sig { returns(T.untyped) }
  def record; end

  sig { params(value: T.untyped).void }
  def record=(value); end
end

module ActiveStorage::Attachment::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[ActiveStorage::Attachment]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[ActiveStorage::Attachment]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[ActiveStorage::Attachment]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(ActiveStorage::Attachment)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(ActiveStorage::Attachment) }
  def find_by_id!(id); end
end

class ActiveStorage::Attachment < ActiveRecord::Base
  include ActiveStorage::Attachment::GeneratedAssociationMethods
  extend ActiveStorage::Attachment::CustomFinderMethods
  extend T::Sig
  extend T::Generic
  RelationType = T.type_alias { T.any(ActiveStorage::Attachment::ActiveRecord_Relation, ActiveStorage::Attachment::ActiveRecord_Associations_CollectionProxy, ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }

  sig { returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.unscoped(&block); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.select(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.order(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.reorder(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.group(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.limit(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.offset(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.joins(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.left_joins(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.where(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.rewhere(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.preload(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.eager_load(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.includes(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.from(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.lock(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.readonly(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.or(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.having(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.create_with(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.distinct(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.references(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.none(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.unscope(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.merge(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.except(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def self.extending(*args, &block); end
end

class ActiveStorage::Attachment::ActiveRecord_Relation < ActiveRecord::Relation
  include ActiveStorage::Attachment::ActiveRelation_WhereNot
  include ActiveStorage::Attachment::CustomFinderMethods
  include Enumerable
  extend T::Sig
  extend T::Generic
  Elem = type_member(fixed: ActiveStorage::Attachment)

  sig { returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveStorage::Attachment::ActiveRecord_Relation) }
  def extending(*args, &block); end
end

class ActiveStorage::Attachment::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include ActiveStorage::Attachment::ActiveRelation_WhereNot
  include ActiveStorage::Attachment::CustomFinderMethods
  include Enumerable
  extend T::Sig
  extend T::Generic
  Elem = type_member(fixed: ActiveStorage::Attachment)

  sig { returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig { override.params(block: T.proc.params(e: ActiveStorage::Attachment).void).returns(T::Array[ActiveStorage::Attachment]) }
  def each(&block); end

  sig { params(level: T.nilable(Integer)).returns(T::Array[ActiveStorage::Attachment]) }
  def flatten(level); end

  sig { returns(T::Array[ActiveStorage::Attachment]) }
  def to_a; end

  sig do
    type_parameters(:U).params(
        blk: T.proc.params(arg0: Elem).returns(T.type_parameter(:U)),
    )
    .returns(T::Array[T.type_parameter(:U)])
  end
  def map(&blk); end
end

class ActiveStorage::Attachment::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include ActiveStorage::Attachment::CustomFinderMethods
  include Enumerable
  extend T::Sig
  extend T::Generic
  Elem = type_member(fixed: ActiveStorage::Attachment)

  sig { returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveStorage::Attachment::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig { override.params(block: T.proc.params(e: ActiveStorage::Attachment).void).returns(T::Array[ActiveStorage::Attachment]) }
  def each(&block); end

  sig { params(level: T.nilable(Integer)).returns(T::Array[ActiveStorage::Attachment]) }
  def flatten(level); end

  sig { returns(T::Array[ActiveStorage::Attachment]) }
  def to_a; end

  sig do
    type_parameters(:U).params(
        blk: T.proc.params(arg0: Elem).returns(T.type_parameter(:U)),
    )
    .returns(T::Array[T.type_parameter(:U)])
  end
  def map(&blk); end

  sig { params(records: T.any(ActiveStorage::Attachment, T::Array[ActiveStorage::Attachment])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(ActiveStorage::Attachment, T::Array[ActiveStorage::Attachment])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(ActiveStorage::Attachment, T::Array[ActiveStorage::Attachment])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(ActiveStorage::Attachment, T::Array[ActiveStorage::Attachment])).returns(T.self_type) }
  def concat(*records); end
end
