# typed: strong

module Phoebe
  module Models
    module Ref
      module Taxonomy
        class LocaleListParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          OrHash =
            T.type_alias { T.any(T.self_type, Phoebe::Internal::AnyHash) }

          sig { returns(T.nilable(String)) }
          attr_reader :accept_language

          sig { params(accept_language: String).void }
          attr_writer :accept_language

          sig do
            params(
              accept_language: String,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(accept_language: nil, request_options: {})
          end

          sig do
            override.returns(
              {
                accept_language: String,
                request_options: Phoebe::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
