# typed: strong

module Phoebe
  module Models
    module Ref
      module Region
        class AdjacentListResponseItem < Phoebe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Phoebe::Models::Ref::Region::AdjacentListResponseItem,
                Phoebe::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :code

          sig { params(code: String).void }
          attr_writer :code

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { params(code: String, name: String).returns(T.attached_class) }
          def self.new(code: nil, name: nil)
          end

          sig { override.returns({ code: String, name: String }) }
          def to_hash
          end
        end

        AdjacentListResponse =
          T.let(
            Phoebe::Internal::Type::ArrayOf[
              Phoebe::Models::Ref::Region::AdjacentListResponseItem
            ],
            Phoebe::Internal::Type::Converter
          )
      end
    end
  end
end
