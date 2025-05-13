# typed: strong

module Phoebe
  module Models
    module Ref
      module Taxonomy
        class LocaleListResponseItem < Phoebe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Phoebe::Models::Ref::Taxonomy::LocaleListResponseItem,
                Phoebe::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :code

          sig { params(code: String).void }
          attr_writer :code

          sig { returns(T.nilable(String)) }
          attr_reader :last_updated

          sig { params(last_updated: String).void }
          attr_writer :last_updated

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(code: String, last_updated: String, name: String).returns(
              T.attached_class
            )
          end
          def self.new(code: nil, last_updated: nil, name: nil)
          end

          sig do
            override.returns(
              { code: String, last_updated: String, name: String }
            )
          end
          def to_hash
          end
        end

        LocaleListResponse =
          T.let(
            Phoebe::Internal::Type::ArrayOf[
              Phoebe::Models::Ref::Taxonomy::LocaleListResponseItem
            ],
            Phoebe::Internal::Type::Converter
          )
      end
    end
  end
end
