# typed: strong

module Phoebe
  module Models
    module Ref
      module Hotspot
        class GeoRetrieveParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          OrHash =
            T.type_alias { T.any(T.self_type, Phoebe::Internal::AnyHash) }

          sig { returns(Float) }
          attr_accessor :lat

          sig { returns(Float) }
          attr_accessor :lng

          # The number of days back to fetch hotspots.
          sig { returns(T.nilable(Integer)) }
          attr_reader :back

          sig { params(back: Integer).void }
          attr_writer :back

          # The search radius from the given position, in kilometers.
          sig { returns(T.nilable(Integer)) }
          attr_reader :dist

          sig { params(dist: Integer).void }
          attr_writer :dist

          # Fetch the records in CSV or JSON format.
          sig do
            returns(
              T.nilable(Phoebe::Ref::Hotspot::GeoRetrieveParams::Fmt::OrSymbol)
            )
          end
          attr_reader :fmt

          sig do
            params(
              fmt: Phoebe::Ref::Hotspot::GeoRetrieveParams::Fmt::OrSymbol
            ).void
          end
          attr_writer :fmt

          sig do
            params(
              lat: Float,
              lng: Float,
              back: Integer,
              dist: Integer,
              fmt: Phoebe::Ref::Hotspot::GeoRetrieveParams::Fmt::OrSymbol,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            lat:,
            lng:,
            # The number of days back to fetch hotspots.
            back: nil,
            # The search radius from the given position, in kilometers.
            dist: nil,
            # Fetch the records in CSV or JSON format.
            fmt: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                lat: Float,
                lng: Float,
                back: Integer,
                dist: Integer,
                fmt: Phoebe::Ref::Hotspot::GeoRetrieveParams::Fmt::OrSymbol,
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
                T.all(Symbol, Phoebe::Ref::Hotspot::GeoRetrieveParams::Fmt)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CSV =
              T.let(
                :csv,
                Phoebe::Ref::Hotspot::GeoRetrieveParams::Fmt::TaggedSymbol
              )
            JSON =
              T.let(
                :json,
                Phoebe::Ref::Hotspot::GeoRetrieveParams::Fmt::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Phoebe::Ref::Hotspot::GeoRetrieveParams::Fmt::TaggedSymbol
                ]
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
