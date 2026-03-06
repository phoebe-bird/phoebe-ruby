# typed: strong

module Phoebe
  module Models
    module Ref
      module Region
        class ListListParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Phoebe::Ref::Region::ListListParams,
                Phoebe::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :region_type

          sig { returns(String) }
          attr_accessor :parent_region_code

          # Fetch the records in CSV or JSON format.
          sig do
            returns(
              T.nilable(Phoebe::Ref::Region::ListListParams::Fmt::OrSymbol)
            )
          end
          attr_reader :fmt

          sig do
            params(fmt: Phoebe::Ref::Region::ListListParams::Fmt::OrSymbol).void
          end
          attr_writer :fmt

          sig do
            params(
              region_type: String,
              parent_region_code: String,
              fmt: Phoebe::Ref::Region::ListListParams::Fmt::OrSymbol,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            region_type:,
            parent_region_code:,
            # Fetch the records in CSV or JSON format.
            fmt: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                region_type: String,
                parent_region_code: String,
                fmt: Phoebe::Ref::Region::ListListParams::Fmt::OrSymbol,
                request_options: Phoebe::RequestOptions
              }
            )
          end
          def to_hash
          end

          # Fetch the records in CSV or JSON format.
          module Fmt
            extend Phoebe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Phoebe::Ref::Region::ListListParams::Fmt)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CSV =
              T.let(
                :csv,
                Phoebe::Ref::Region::ListListParams::Fmt::TaggedSymbol
              )
            JSON =
              T.let(
                :json,
                Phoebe::Ref::Region::ListListParams::Fmt::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[Phoebe::Ref::Region::ListListParams::Fmt::TaggedSymbol]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
