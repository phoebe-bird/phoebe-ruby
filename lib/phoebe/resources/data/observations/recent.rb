# frozen_string_literal: true

module Phoebe
  module Resources
    class Data
      class Observations
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
          # @return [Phoebe::Resources::Data::Observations::Recent::Notable]
          attr_reader :notable

          # The data/obs end-points are used to fetch observations submitted to eBird in
          # checklists. There are two categories of end-point: 1. Fetch observations for a
          # specific country, region or location. 2. Fetch observations for nearby
          # locations - up to a distance of 50km. Each end-point supports optional query
          # parameters which allow you to filter the list of observations returned.
          # @return [Phoebe::Resources::Data::Observations::Recent::Species]
          attr_reader :species

          # The data/obs end-points are used to fetch observations submitted to eBird in
          # checklists. There are two categories of end-point: 1. Fetch observations for a
          # specific country, region or location. 2. Fetch observations for nearby
          # locations - up to a distance of 50km. Each end-point supports optional query
          # parameters which allow you to filter the list of observations returned.
          # @return [Phoebe::Resources::Data::Observations::Recent::Historic]
          attr_reader :historic

          # Get the list of recent observations (up to 30 days ago) of birds seen in a
          # country, state, county, or location. Results include only the most recent
          # observation for each species in the region specified.
          #
          # @overload list(region_code, back: nil, cat: nil, hotspot: nil, include_provisional: nil, max_results: nil, r: nil, spp_locale: nil, request_options: {})
          #
          # @param region_code [String] The country, subnational1, subnational2 or location code.
          #
          # @param back [Integer] The number of days back to fetch observations.
          #
          # @param cat [Symbol, Phoebe::Models::Data::Observations::RecentListParams::Cat] Only fetch observations from these taxonomic categories
          #
          # @param hotspot [Boolean] Only fetch observations from hotspots
          #
          # @param include_provisional [Boolean] Include observations which have not yet been reviewed
          #
          # @param max_results [Integer] Only fetch this number of observations
          #
          # @param r [Array<String>] Fetch observations from up to 10 locations
          #
          # @param spp_locale [String] Use this language for species common names
          #
          # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<Phoebe::Models::Data::Observation>]
          #
          # @see Phoebe::Models::Data::Observations::RecentListParams
          def list(region_code, params = {})
            parsed, options = Phoebe::Data::Observations::RecentListParams.dump_request(params)
            query = Phoebe::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["data/obs/%1$s/recent", region_code],
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
            @notable = Phoebe::Resources::Data::Observations::Recent::Notable.new(client: client)
            @species = Phoebe::Resources::Data::Observations::Recent::Species.new(client: client)
            @historic = Phoebe::Resources::Data::Observations::Recent::Historic.new(client: client)
          end
        end
      end
    end
  end
end
