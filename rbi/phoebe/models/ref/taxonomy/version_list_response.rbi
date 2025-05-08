# typed: strong

module Phoebe
  module Models
    module Ref
      module Taxonomy
        class VersionListResponseItem < Phoebe::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, Phoebe::Internal::AnyHash) }

          sig { returns(T.nilable(Float)) }
          attr_reader :authority_ver

          sig { params(authority_ver: Float).void }
          attr_writer :authority_ver

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :latest

          sig { params(latest: T::Boolean).void }
          attr_writer :latest

          sig do
            params(authority_ver: Float, latest: T::Boolean).returns(
              T.attached_class
            )
          end
          def self.new(authority_ver: nil, latest: nil)
          end

          sig { override.returns({ authority_ver: Float, latest: T::Boolean }) }
          def to_hash
          end
        end

        VersionListResponse =
          T.let(
            Phoebe::Internal::Type::ArrayOf[
              Phoebe::Models::Ref::Taxonomy::VersionListResponseItem
            ],
            Phoebe::Internal::Type::Converter
          )
      end
    end
  end
end
