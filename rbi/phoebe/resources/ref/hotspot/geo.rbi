# typed: strong

module Phoebe
  module Resources
    class Ref
      class Hotspot
        class Geo
          # Get the list of hotspots, within a radius of up to 50 kilometers, from a given
          # set of coordinates.
          sig do
            params(
              lat: Float,
              lng: Float,
              back: Integer,
              dist: Integer,
              fmt: Phoebe::Ref::Hotspot::GeoRetrieveParams::Fmt::OrSymbol,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(
              T::Array[Phoebe::Models::Ref::Hotspot::GeoRetrieveResponseItem]
            )
          end
          def retrieve(
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

          # @api private
          sig { params(client: Phoebe::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
