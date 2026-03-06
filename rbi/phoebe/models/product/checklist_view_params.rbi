# typed: strong

module Phoebe
  module Models
    module Product
      class ChecklistViewParams < Phoebe::Internal::Type::BaseModel
        extend Phoebe::Internal::Type::RequestParameters::Converter
        include Phoebe::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Phoebe::Product::ChecklistViewParams,
              Phoebe::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :sub_id

        sig do
          params(
            sub_id: String,
            request_options: Phoebe::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(sub_id:, request_options: {})
        end

        sig do
          override.returns(
            { sub_id: String, request_options: Phoebe::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
