# frozen_string_literal: true

module Phoebe
  module Resources
    class Data
      class Observations
        class Recent
          # The data/obs end-points are used to fetch observations submitted to eBird in
          # checklists. There are two categories of end-point: 1. Fetch observations for a
          # specific country, region or location. 2. Fetch observations for nearby
          # locations - up to a distance of 50km. Each end-point supports optional query
          # parameters which allow you to filter the list of observations returned.
          class Species
            # Get the recent observations, up to 30 days ago, of a particular species in a
            # country, region or location. Results include only the most recent observation
            # from each location in the region specified.
            #
            # #### Notes
            #
            # The species code is typically a 6-letter code, e.g. cangoo for Canada Goose. You
            # can get complete set of species code from the GET eBird Taxonomy end-point.
            #
            # When using the _r_ query parameter set the _regionCode_ URL parameter to an
            # empty string.
            #
            # @overload retrieve(species_code, region_code:, back: nil, hotspot: nil, include_provisional: nil, max_results: nil, r: nil, spp_locale: nil, request_options: {})
            #
            # @param species_code [String] Path param: The eBird species code.
            #
            # @param region_code [String] Path param: The country, subnational1, subnational2 or location code.
            #
            # @param back [Integer] Query param: The number of days back to fetch observations.
            #
            # @param hotspot [Boolean] Query param: Only fetch observations from hotspots
            #
            # @param include_provisional [Boolean] Query param: Include observations which have not yet been reviewed.
            #
            # @param max_results [Integer] Query param: Only fetch this number of observations
            #
            # @param r [Array<String>] Query param: Fetch observations from up to 10 locations
            #
            # @param spp_locale [String] Query param: Use this language for species common names
            #
            # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Array<Phoebe::Models::Data::Observation>]
            #
            # @see Phoebe::Models::Data::Observations::Recent::SpecieRetrieveParams
            def retrieve(species_code, params)
              parsed, options = Phoebe::Data::Observations::Recent::SpecieRetrieveParams.dump_request(params)
              query = Phoebe::Internal::Util.encode_query_params(parsed)
              region_code =
                parsed.delete(:region_code) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :get,
                path: ["data/obs/%1$s/recent/%2$s", region_code, species_code],
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
