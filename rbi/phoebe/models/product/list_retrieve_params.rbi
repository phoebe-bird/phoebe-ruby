# typed: strong

module Phoebe
  module Models
    module Product
      class ListRetrieveParams < Phoebe::Internal::Type::BaseModel
        extend Phoebe::Internal::Type::RequestParameters::Converter
        include Phoebe::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Phoebe::Product::ListRetrieveParams,
              Phoebe::Internal::AnyHash
            )
          end

        # Only fetch this number of checklists.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_results

        sig { params(max_results: Integer).void }
        attr_writer :max_results

        sig do
          params(
            max_results: Integer,
            request_options: Phoebe::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Only fetch this number of checklists.
          max_results: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { max_results: Integer, request_options: Phoebe::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
