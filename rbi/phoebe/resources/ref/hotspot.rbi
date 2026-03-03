# typed: strong

module Phoebe
  module Resources
    class Ref
      # With the ref/hotspot end-points you can find the hotspots for a given country or
      # region or nearby hotspots
      class Hotspot
        # With the ref/hotspot end-points you can find the hotspots for a given country or
        # region or nearby hotspots
        sig { returns(Phoebe::Resources::Ref::Hotspot::Geo) }
        attr_reader :geo

        # With the ref/hotspot end-points you can find the hotspots for a given country or
        # region or nearby hotspots
        sig { returns(Phoebe::Resources::Ref::Hotspot::Info) }
        attr_reader :info

        # Hotspots in a region
        sig do
          params(
            region_code: String,
            back: Integer,
            fmt: Phoebe::Ref::HotspotListParams::Fmt::OrSymbol,
            request_options: Phoebe::RequestOptions::OrHash
          ).returns(T::Array[Phoebe::Models::Ref::HotspotListResponseItem])
        end
        def list(
          # The country, subnational1 or subnational2 code.
          region_code,
          # The number of days back to fetch hotspots.
          back: nil,
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
