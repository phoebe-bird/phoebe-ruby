# typed: strong

module Phoebe
  module Models
    module Ref
      module Hotspot
        class InfoRetrieveParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Phoebe::Ref::Hotspot::InfoRetrieveParams,
                Phoebe::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :loc_id

          sig do
            params(
              loc_id: String,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(loc_id:, request_options: {})
          end

          sig do
            override.returns(
              { loc_id: String, request_options: Phoebe::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
