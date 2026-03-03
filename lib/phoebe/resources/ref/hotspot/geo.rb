# frozen_string_literal: true

module Phoebe
  module Resources
    class Ref
      class Hotspot
        # With the ref/hotspot end-points you can find the hotspots for a given country or
        # region or nearby hotspots
        class Geo
          # Get the list of hotspots, within a radius of up to 50 kilometers, from a given
          # set of coordinates.
          #
          # @overload retrieve(lat:, lng:, back: nil, dist: nil, fmt: nil, request_options: {})
          #
          # @param lat [Float]
          #
          # @param lng [Float]
          #
          # @param back [Integer] The number of days back to fetch hotspots.
          #
          # @param dist [Integer] The search radius from the given position, in kilometers.
          #
          # @param fmt [Symbol, Phoebe::Models::Ref::Hotspot::GeoRetrieveParams::Fmt] Fetch the records in CSV or JSON format.
          #
          # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<Phoebe::Models::Ref::Hotspot::GeoRetrieveResponseItem>]
          #
          # @see Phoebe::Models::Ref::Hotspot::GeoRetrieveParams
          def retrieve(params)
            parsed, options = Phoebe::Ref::Hotspot::GeoRetrieveParams.dump_request(params)
            query = Phoebe::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "ref/hotspot/geo",
              query: query,
              model: Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Ref::Hotspot::GeoRetrieveResponseItem],
              options: options
            )
          end

          # @api private
          #
          # @param client [Phoebe::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
