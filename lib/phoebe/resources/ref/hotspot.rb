# frozen_string_literal: true

module Phoebe
  module Resources
    class Ref
      # With the ref/hotspot end-points you can find the hotspots for a given country or
      # region or nearby hotspots
      class Hotspot
        # With the ref/hotspot end-points you can find the hotspots for a given country or
        # region or nearby hotspots
        # @return [Phoebe::Resources::Ref::Hotspot::Geo]
        attr_reader :geo

        # With the ref/hotspot end-points you can find the hotspots for a given country or
        # region or nearby hotspots
        # @return [Phoebe::Resources::Ref::Hotspot::Info]
        attr_reader :info

        # Hotspots in a region
        #
        # @overload list(region_code, back: nil, fmt: nil, request_options: {})
        #
        # @param region_code [String] The country, subnational1 or subnational2 code.
        #
        # @param back [Integer] The number of days back to fetch hotspots.
        #
        # @param fmt [Symbol, Phoebe::Models::Ref::HotspotListParams::Fmt] Fetch the records in CSV or JSON format.
        #
        # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Phoebe::Models::Ref::HotspotListResponseItem>]
        #
        # @see Phoebe::Models::Ref::HotspotListParams
        def list(region_code, params = {})
          parsed, options = Phoebe::Ref::HotspotListParams.dump_request(params)
          query = Phoebe::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["ref/hotspot/%1$s", region_code],
            query: query,
            model: Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Ref::HotspotListResponseItem],
            options: options
          )
        end

        # @api private
        #
        # @param client [Phoebe::Client]
        def initialize(client:)
          @client = client
          @geo = Phoebe::Resources::Ref::Hotspot::Geo.new(client: client)
          @info = Phoebe::Resources::Ref::Hotspot::Info.new(client: client)
        end
      end
    end
  end
end
