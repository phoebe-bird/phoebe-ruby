# typed: strong

module Phoebe
  module Models
    module Ref
      module Taxonomy
        class SpeciesGroupListResponseItem < Phoebe::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, Phoebe::Internal::AnyHash) }

          sig { returns(T.nilable(String)) }
          attr_reader :group_name

          sig { params(group_name: String).void }
          attr_writer :group_name

          sig { returns(T.nilable(Integer)) }
          attr_reader :group_order

          sig { params(group_order: Integer).void }
          attr_writer :group_order

          sig { returns(T.nilable(T::Array[T::Array[Float]])) }
          attr_reader :taxon_order_bounds

          sig { params(taxon_order_bounds: T::Array[T::Array[Float]]).void }
          attr_writer :taxon_order_bounds

          sig do
            params(
              group_name: String,
              group_order: Integer,
              taxon_order_bounds: T::Array[T::Array[Float]]
            ).returns(T.attached_class)
          end
          def self.new(
            group_name: nil,
            group_order: nil,
            taxon_order_bounds: nil
          )
          end

          sig do
            override.returns(
              {
                group_name: String,
                group_order: Integer,
                taxon_order_bounds: T::Array[T::Array[Float]]
              }
            )
          end
          def to_hash
          end
        end

        SpeciesGroupListResponse =
          T.let(
            Phoebe::Internal::Type::ArrayOf[
              Phoebe::Models::Ref::Taxonomy::SpeciesGroupListResponseItem
            ],
            Phoebe::Internal::Type::Converter
          )
      end
    end
  end
end
