# typed: strong

module Phoebe
  module Models
    module Ref
      module Taxonomy
        class FormListParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Phoebe::Ref::Taxonomy::FormListParams,
                Phoebe::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :species_code

          sig do
            params(
              species_code: String,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(species_code:, request_options: {})
          end

          sig do
            override.returns(
              { species_code: String, request_options: Phoebe::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
