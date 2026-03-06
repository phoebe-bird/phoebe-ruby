# typed: strong

module Phoebe
  module Models
    module Ref
      module Region
        class AdjacentListParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Phoebe::Ref::Region::AdjacentListParams,
                Phoebe::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :region_code

          sig do
            params(
              region_code: String,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(region_code:, request_options: {})
          end

          sig do
            override.returns(
              { region_code: String, request_options: Phoebe::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
