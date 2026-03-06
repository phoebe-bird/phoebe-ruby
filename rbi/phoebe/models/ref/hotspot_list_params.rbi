# typed: strong

module Phoebe
  module Models
    module Ref
      class HotspotListParams < Phoebe::Internal::Type::BaseModel
        extend Phoebe::Internal::Type::RequestParameters::Converter
        include Phoebe::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Phoebe::Ref::HotspotListParams, Phoebe::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :region_code

        # The number of days back to fetch hotspots.
        sig { returns(T.nilable(Integer)) }
        attr_reader :back

        sig { params(back: Integer).void }
        attr_writer :back

        # Fetch the records in CSV or JSON format.
        sig do
          returns(T.nilable(Phoebe::Ref::HotspotListParams::Fmt::OrSymbol))
        end
        attr_reader :fmt

        sig { params(fmt: Phoebe::Ref::HotspotListParams::Fmt::OrSymbol).void }
        attr_writer :fmt

        sig do
          params(
            region_code: String,
            back: Integer,
            fmt: Phoebe::Ref::HotspotListParams::Fmt::OrSymbol,
            request_options: Phoebe::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          region_code:,
          # The number of days back to fetch hotspots.
          back: nil,
          # Fetch the records in CSV or JSON format.
          fmt: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              region_code: String,
              back: Integer,
              fmt: Phoebe::Ref::HotspotListParams::Fmt::OrSymbol,
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
            T.type_alias { T.all(Symbol, Phoebe::Ref::HotspotListParams::Fmt) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CSV = T.let(:csv, Phoebe::Ref::HotspotListParams::Fmt::TaggedSymbol)
          JSON = T.let(:json, Phoebe::Ref::HotspotListParams::Fmt::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Phoebe::Ref::HotspotListParams::Fmt::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
