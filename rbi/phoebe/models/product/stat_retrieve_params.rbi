# typed: strong

module Phoebe
  module Models
    module Product
      class StatRetrieveParams < Phoebe::Internal::Type::BaseModel
        extend Phoebe::Internal::Type::RequestParameters::Converter
        include Phoebe::Internal::Type::RequestParameters

        OrHash = T.type_alias { T.any(T.self_type, Phoebe::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :region_code

        sig { returns(Integer) }
        attr_accessor :y_

        sig { returns(Integer) }
        attr_accessor :m

        sig do
          params(
            region_code: String,
            y_: Integer,
            m: Integer,
            request_options: Phoebe::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(region_code:, y_:, m:, request_options: {})
        end

        sig do
          override.returns(
            {
              region_code: String,
              y_: Integer,
              m: Integer,
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
