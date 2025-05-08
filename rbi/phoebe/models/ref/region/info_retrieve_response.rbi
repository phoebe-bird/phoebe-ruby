# typed: strong

module Phoebe
  module Models
    module Ref
      module Region
        class InfoRetrieveResponse < Phoebe::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, Phoebe::Internal::AnyHash) }

          sig do
            returns(
              T.nilable(
                Phoebe::Models::Ref::Region::InfoRetrieveResponse::Bounds
              )
            )
          end
          attr_reader :bounds

          sig do
            params(
              bounds:
                Phoebe::Models::Ref::Region::InfoRetrieveResponse::Bounds::OrHash
            ).void
          end
          attr_writer :bounds

          sig { returns(T.nilable(String)) }
          attr_reader :result

          sig { params(result: String).void }
          attr_writer :result

          sig do
            params(
              bounds:
                Phoebe::Models::Ref::Region::InfoRetrieveResponse::Bounds::OrHash,
              result: String
            ).returns(T.attached_class)
          end
          def self.new(bounds: nil, result: nil)
          end

          sig do
            override.returns(
              {
                bounds:
                  Phoebe::Models::Ref::Region::InfoRetrieveResponse::Bounds,
                result: String
              }
            )
          end
          def to_hash
          end

          class Bounds < Phoebe::Internal::Type::BaseModel
            OrHash =
              T.type_alias { T.any(T.self_type, Phoebe::Internal::AnyHash) }

            sig { returns(T.nilable(Float)) }
            attr_reader :max_x

            sig { params(max_x: Float).void }
            attr_writer :max_x

            sig { returns(T.nilable(Float)) }
            attr_reader :max_y

            sig { params(max_y: Float).void }
            attr_writer :max_y

            sig { returns(T.nilable(Float)) }
            attr_reader :min_x

            sig { params(min_x: Float).void }
            attr_writer :min_x

            sig { returns(T.nilable(Float)) }
            attr_reader :min_y

            sig { params(min_y: Float).void }
            attr_writer :min_y

            sig do
              params(
                max_x: Float,
                max_y: Float,
                min_x: Float,
                min_y: Float
              ).returns(T.attached_class)
            end
            def self.new(max_x: nil, max_y: nil, min_x: nil, min_y: nil)
            end

            sig do
              override.returns(
                { max_x: Float, max_y: Float, min_x: Float, min_y: Float }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
