# frozen_string_literal: true

module Phoebe
  module Resources
    class Data
      class Observations
        class Geo
          class Recent
            class Notable
              # Get the list of notable observations (up to 30 days ago) of birds seen at
              # locations within a radius of up to 50 kilometers, from a given set of
              # coordinates. Notable observations can be for locally or nationally rare species
              # or are otherwise unusual, for example over-wintering birds in a species which is
              # normally only a summer visitor.
              #
              # @overload list(lat:, lng:, back: nil, detail: nil, dist: nil, hotspot: nil, max_results: nil, spp_locale: nil, request_options: {})
              #
              # @param lat [Float]
              #
              # @param lng [Float]
              #
              # @param back [Integer] The number of days back to fetch observations.
              #
              # @param detail [Symbol, Phoebe::Models::Data::Observations::Geo::Recent::NotableListParams::Detail] Include a subset (simple), or all (full), of the fields available.
              #
              # @param dist [Integer] The search radius from the given position, in kilometers.
              #
              # @param hotspot [Boolean] Only fetch observations from hotspots
              #
              # @param max_results [Integer] Only fetch this number of observations
              #
              # @param spp_locale [String] Use this language for species common names
              #
              # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Array<Phoebe::Models::Data::Observation>]
              #
              # @see Phoebe::Models::Data::Observations::Geo::Recent::NotableListParams
              def list(params)
                parsed, options = Phoebe::Data::Observations::Geo::Recent::NotableListParams.dump_request(params)
                @client.request(
                  method: :get,
                  path: "data/obs/geo/recent/notable",
                  query: parsed.transform_keys(max_results: "maxResults", spp_locale: "sppLocale"),
                  model: Phoebe::Internal::Type::ArrayOf[Phoebe::Data::Observation],
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
  end
end
