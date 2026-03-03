# frozen_string_literal: true

module Phoebe
  module Resources
    class Data
      class Observations
        class Nearest
          # The data/obs end-points are used to fetch observations submitted to eBird in
          # checklists. There are two categories of end-point: 1. Fetch observations for a
          # specific country, region or location. 2. Fetch observations for nearby
          # locations - up to a distance of 50km. Each end-point supports optional query
          # parameters which allow you to filter the list of observations returned.
          class GeoSpecies
            # Find the nearest locations where a species has been seen recently. #### Notes
            # The species code is typically a 6-letter code, e.g. barswa for Barn Swallow. You
            # can get complete set of species code from the GET eBird Taxonomy end-point.
            #
            # @overload list(species_code, lat:, lng:, back: nil, dist: nil, hotspot: nil, include_provisional: nil, max_results: nil, spp_locale: nil, request_options: {})
            #
            # @param species_code [String] The eBird species code.
            #
            # @param lat [Float]
            #
            # @param lng [Float]
            #
            # @param back [Integer] The number of days back to fetch observations.
            #
            # @param dist [Integer] Only fetch observations within this distance of the provided lat/lng
            #
            # @param hotspot [Boolean] Only fetch observations from hotspots
            #
            # @param include_provisional [Boolean] Include observations which have not yet been reviewed.
            #
            # @param max_results [Integer] Only fetch up to this number of observations
            #
            # @param spp_locale [String] Use this language for species common names
            #
            # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Array<Phoebe::Models::Data::Observation>]
            #
            # @see Phoebe::Models::Data::Observations::Nearest::GeoSpecieListParams
            def list(species_code, params)
              parsed, options = Phoebe::Data::Observations::Nearest::GeoSpecieListParams.dump_request(params)
              query = Phoebe::Internal::Util.encode_query_params(parsed)
              @client.request(
                method: :get,
                path: ["data/nearest/geo/recent/%1$s", species_code],
                query: query.transform_keys(
                  include_provisional: "includeProvisional",
                  max_results: "maxResults",
                  spp_locale: "sppLocale"
                ),
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
