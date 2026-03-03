# frozen_string_literal: true

module Phoebe
  module Resources
    class Data
      class Observations
        class Geo
          # The data/obs end-points are used to fetch observations submitted to eBird in
          # checklists. There are two categories of end-point: 1. Fetch observations for a
          # specific country, region or location. 2. Fetch observations for nearby
          # locations - up to a distance of 50km. Each end-point supports optional query
          # parameters which allow you to filter the list of observations returned.
          class Recent
            # The data/obs end-points are used to fetch observations submitted to eBird in
            # checklists. There are two categories of end-point: 1. Fetch observations for a
            # specific country, region or location. 2. Fetch observations for nearby
            # locations - up to a distance of 50km. Each end-point supports optional query
            # parameters which allow you to filter the list of observations returned.
            # @return [Phoebe::Resources::Data::Observations::Geo::Recent::Species]
            attr_reader :species

            # The data/obs end-points are used to fetch observations submitted to eBird in
            # checklists. There are two categories of end-point: 1. Fetch observations for a
            # specific country, region or location. 2. Fetch observations for nearby
            # locations - up to a distance of 50km. Each end-point supports optional query
            # parameters which allow you to filter the list of observations returned.
            # @return [Phoebe::Resources::Data::Observations::Geo::Recent::Notable]
            attr_reader :notable

            # Get the list of recent observations (up to 30 days ago) of birds seen at
            # locations within a radius of up to 50 kilometers, from a given set of
            # coordinates. Results include only the most recent observation for each species
            # in the region specified.
            #
            # @overload list(lat:, lng:, back: nil, cat: nil, dist: nil, hotspot: nil, include_provisional: nil, max_results: nil, sort: nil, spp_locale: nil, request_options: {})
            #
            # @param lat [Float]
            #
            # @param lng [Float]
            #
            # @param back [Integer] The number of days back to fetch observations.
            #
            # @param cat [Symbol, Phoebe::Models::Data::Observations::Geo::RecentListParams::Cat] Only fetch observations from these taxonomic categories
            #
            # @param dist [Integer] The search radius from the given position, in kilometers.
            #
            # @param hotspot [Boolean] Only fetch observations from hotspots
            #
            # @param include_provisional [Boolean] Include observations which have not yet been reviewed.
            #
            # @param max_results [Integer] Only fetch this number of observations
            #
            # @param sort [Symbol, Phoebe::Models::Data::Observations::Geo::RecentListParams::Sort] Sort observations by taxonomy or by date, most recent first.
            #
            # @param spp_locale [String] Use this language for species common names
            #
            # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Array<Phoebe::Models::Data::Observation>]
            #
            # @see Phoebe::Models::Data::Observations::Geo::RecentListParams
            def list(params)
              parsed, options = Phoebe::Data::Observations::Geo::RecentListParams.dump_request(params)
              query = Phoebe::Internal::Util.encode_query_params(parsed)
              @client.request(
                method: :get,
                path: "data/obs/geo/recent",
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
              @species = Phoebe::Resources::Data::Observations::Geo::Recent::Species.new(client: client)
              @notable = Phoebe::Resources::Data::Observations::Geo::Recent::Notable.new(client: client)
            end
          end
        end
      end
    end
  end
end
