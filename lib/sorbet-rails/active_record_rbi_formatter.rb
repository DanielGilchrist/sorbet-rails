# typed: strict
require('parlour')

class SorbetRails::ActiveRecordRbiFormatter
  extend T::Sig

  Parameter = ::Parlour::RbiGenerator::Parameter

  sig {returns(String)}
  def generate_active_record_base_rbi
    puts "-- Generate sigs for ActiveRecord::Base --"

    parlour = T.let(Parlour::RbiGenerator.new, Parlour::RbiGenerator)

    parlour.root.add_comments([
      'This is an autogenerated file for Rails\' ActiveRecord.',
      'Please rerun bundle exec rake rails_rbi:active_record to regenerate.'
    ])

    parlour.root.create_class('ActiveRecord::Base') do |class_rbi|
      create_elem_specific_query_methods(class_rbi, type: 'T.attached_class', class_method: true)
      create_general_query_methods(class_rbi, class_method: true)
    end

    parlour.rbi
  end

  sig {returns(String)}
  def generate_active_record_relation_rbi
    puts "-- Generate sigs for ActiveRecord::Relation --"

    parlour = T.let(Parlour::RbiGenerator.new, Parlour::RbiGenerator)

    parlour.root.add_comments([
      'This is an autogenerated file for Rails\' ActiveRecord.',
      'Please rerun bundle exec rake rails_rbi:active_record to regenerate.'
    ])

    parlour.root.create_class('ActiveRecord::Relation') do |class_rbi|
      class_rbi.create_constant(
        "Elem",
        value: "type_member(fixed: T.untyped)",
      )

      create_elem_specific_query_methods(class_rbi, type: 'Elem', class_method: false)
      create_general_query_methods(class_rbi, class_method: false)

      # Many methods that exist on the relation classes also exist on the model class
      # by delegating to `:all` (e.g. `Model.any?` is really `Model.all.any?`). These
      # methods (e.g. each, empty?) only exist on the relation classes.
      class_rbi.create_method(
        "each",
        parameters: [
          Parameter.new("&block", type: "T.proc.params(e: Elem).void")
        ],
        return_type: "T::Array[Elem]",
        implementation: true,
      )
      class_rbi.create_method(
        "flatten",
        parameters: [ Parameter.new("level", type: "T.nilable(Integer)") ],
        return_type: "T::Array[Elem]",
      )
      class_rbi.create_method("to_a", return_type: "T::Array[Elem]")
      class_rbi.create_method(
        "map",
        type_parameters: [:U],
        parameters: [ Parameter.new("&blk", type: "T.proc.params(arg0: Elem).returns(T.type_parameter(:U))") ],
        return_type: "T::Array[T.type_parameter(:U)]",
      )
      class_rbi.create_method('empty?', return_type: "T::Boolean")
    end

    parlour.root.create_class("ActiveRecord::AssociationRelation", superclass: "ActiveRecord::Relation") do |class_rbi|
      class_rbi.create_constant(
        "Elem",
        value: "type_member(fixed: T.untyped)",
      )

      # Ideally we shouldn't need to define these since this class inherits from
      # ActiveRecord::Relation but the activerecord.rbi that sorbet generates
      # defines some methods which sorbet finds instead of the methods inherited
      # by ActiveRecord::Relation. Some of these methods have different arity or
      # parameters than the ones defined by `create_elem_specific_query_methods` so
      # we need to match the signatures in that conflicting rbi.
      build_methods = %w(new build create create!)
      build_methods.each do |build_method|
        class_rbi.create_method(
          build_method,
          parameters: [
            Parameter.new("*args", type: "T.untyped"),
            Parameter.new(
              "&block",
              type: "T.nilable(T.proc.params(object: Elem).void)",
            ),
          ],
          return_type: "Elem",
        )
      end
    end

    parlour.root.create_class("ActiveRecord::Associations::CollectionProxy", superclass: "ActiveRecord::Relation") do |class_rbi|
      class_rbi.create_constant(
        "Elem",
        value: "type_member(fixed: T.untyped)",
      )

      # Ideally we shouldn't need to define these since this class inherits from
      # ActiveRecord::Relation but the activerecord.rbi that sorbet generates
      # defines some methods which sorbet finds instead of the methods inherited
      # by ActiveRecord::Relation. Some of these methods have different arity or
      # parameters than the ones defined by `create_elem_specific_query_methods` so
      # we need to match the signatures in that conflicting rbi.
      build_methods = %w(new build create create!)
      build_methods.each do |build_method|
        class_rbi.create_method(
          build_method,
          parameters: [
            Parameter.new("attributes", type: "T.untyped", default: 'nil'),
            Parameter.new(
              "&block",
              type: "T.nilable(T.proc.params(object: Elem).void)",
            ),
          ],
          return_type: "Elem",
        )
      end

      class_rbi.create_method(
        "find",
        parameters: [Parameter.new("*args", type: "T.untyped")],
        return_type: "Elem",
      )

      if Rails.version =~ /^5\.0/
        item_methods = %w(first second third third_to_last second_to_last last)
        item_methods.each do |item_method|
          class_rbi.create_method(
            item_method,
            parameters: [Parameter.new("*args", type: "T.untyped")],
            return_type: "T.nilable(Elem)",
          )
        end

        boolean_methods = %w(any? many?)
        boolean_methods.each do |boolean_method|
          class_rbi.create_method(boolean_method, return_type: "T::Boolean")
        end
      else
        class_rbi.create_method(
          "last",
          parameters: [Parameter.new("limit", type: "T.untyped", default: "nil")],
          return_type: "T.nilable(Elem)",
        )
      end

      class_rbi.create_method('empty?', return_type: "T::Boolean")
    end

    parlour.rbi
  end

  sig {
    params(
      class_rbi: Parlour::RbiGenerator::Namespace,
      type: String,
      class_method: T::Boolean,
    ).void
  }
  def create_elem_specific_query_methods(class_rbi, type:, class_method:)
    finder_methods = %w(find find_by find_by!)
    finder_methods.each do |finder_method|
      class_rbi.create_method(
        finder_method,
        parameters: [ Parameter.new("*args", type: "T.untyped") ],
        return_type: (finder_method == 'find' || finder_method.ends_with?('!')) ? type : "T.nilable(#{type})",
        class_method: class_method,
      )
    end

    first_or_something_by_methods = %w(find_or_initialize_by find_or_create_by find_or_create_by!)
    first_or_something_by_methods.each do |first_or_something_by_method|
      class_rbi.create_method(
        first_or_something_by_method,
        parameters: [
          Parameter.new("attributes", type: "T.untyped"),
          Parameter.new(
            "&block",
            type: "T.nilable(T.proc.params(object: #{type}).void)",
          ),
        ],
        return_type: type,
        class_method: class_method
      )
    end

    item_methods = %w(first first! second second! third third! third_to_last third_to_last! second_to_last second_to_last! last last!)
    item_methods.each do |item_method|
      class_rbi.create_method(
        item_method,
        return_type: item_method.ends_with?('!') ? type : "T.nilable(#{type})",
        class_method: class_method,
      )
    end

    build_methods = %w(create create! new build first_or_create first_or_create! first_or_initialize)
    build_methods.each do |build_method|
      # `build` method doesn't exist on the model, only on the relations
      next if build_method == 'build' && class_method

      # This needs to match the generated method signature in activerecord.rbi and
      # in Rails 5.0 and 5.1 the param is a splat.
      if Rails.version =~ /^5\.(0|1)/ && %w(new build create create!).include?(build_method)
        param = Parameter.new("*args", type: "T.untyped")
      else
        param = Parameter.new("attributes", type: "T.untyped", default: 'nil')
      end

      class_rbi.create_method(
        build_method,
        parameters: [
          param,
          Parameter.new(
            "&block",
            type: "T.nilable(T.proc.params(object: #{type}).void)",
          ),
        ],
        return_type: type,
        class_method: class_method,
      )
    end

    batch_methods = %w(find_each find_in_batches)
    batch_methods.each do |batch_method|
      inner_type = batch_method == 'find_each' ? type : "T::Array[#{type}]"

      class_rbi.create_method(
        batch_method,
        parameters: [
          Parameter.new("start:", type: "T.nilable(Integer)", default: "nil"),
          Parameter.new("finish:", type: "T.nilable(Integer)", default: "nil"),
          Parameter.new("batch_size:", type: "T.nilable(Integer)", default: "1000"),
          Parameter.new("error_on_ignore:", type: "T.nilable(T::Boolean)", default: "nil"),
          Parameter.new("&block", type: "T.nilable(T.proc.params(e: #{inner_type}).void)"),
        ],
        return_type: "T::Enumerator[#{inner_type}]",
        class_method: class_method,
        override: true,
      )
    end
  end

  sig {
    params(
      class_rbi: Parlour::RbiGenerator::Namespace,
      class_method: T::Boolean,
    ).void
  }
  def create_general_query_methods(class_rbi, class_method:)
    class_rbi.create_method(
      "exists?",
      parameters: [ Parameter.new("conditions", type: "T.untyped", default: "nil") ],
      return_type: "T::Boolean",
      class_method: class_method,
    )

    boolean_methods = %w(any? many? none? one?)
    boolean_methods.each do |boolean_method|
      class_rbi.create_method(
        boolean_method,
        return_type: "T::Boolean",
        class_method: class_method,
      )
    end
  end
end
