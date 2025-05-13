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

          sig do
            params(request_options: Phoebe::RequestOptions::OrHash).returns(
              T.attached_class
            )
          end
          def self.new(request_options: {})
          end

          sig { override.returns({ request_options: Phoebe::RequestOptions }) }
          def to_hash
          end
        end
      end
    end
  end
end
