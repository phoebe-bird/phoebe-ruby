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
          class Historic
            # Get a list of all taxa seen in a country, region or location on a specific date,
            # with the specific observations determined by the "rank" parameter (defaults to
            # latest observation on the date).
            #
            # #### Notes Responses may be cached for 30 minutes
            #
            # @overload list(d, region_code:, y_:, m:, cat: nil, detail: nil, hotspot: nil, include_provisional: nil, max_results: nil, r: nil, rank: nil, spp_locale: nil, request_options: {})
            #
            # @param d [Integer] Path param
            #
            # @param region_code [String] Path param: The country, subnational1, subnational2 or location code.
            #
            # @param y_ [Integer] Path param
            #
            # @param m [Integer] Path param
            #
            # @param cat [Symbol, Phoebe::Models::Data::Observations::Recent::HistoricListParams::Cat] Query param: Only fetch observations from these taxonomic categories
            #
            # @param detail [Symbol, Phoebe::Models::Data::Observations::Recent::HistoricListParams::Detail] Query param: Include a subset (simple), or all (full), of the fields available.
            #
            # @param hotspot [Boolean] Query param: Only fetch observations from hotspots
            #
            # @param include_provisional [Boolean] Query param: Include observations which have not yet been reviewed.
            #
            # @param max_results [Integer] Query param: Only fetch this number of observations
            #
            # @param r [Array<String>] Query param: Fetch observations from up to 50 locations
            #
            # @param rank [Symbol, Phoebe::Models::Data::Observations::Recent::HistoricListParams::Rank] Query param: Include latest observation of the day, or the first added
            #
            # @param spp_locale [String] Query param: Use this language for species common names
            #
            # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Array<Phoebe::Models::Data::Observation>]
            #
            # @see Phoebe::Models::Data::Observations::Recent::HistoricListParams
            def list(d, params)
              parsed, options = Phoebe::Data::Observations::Recent::HistoricListParams.dump_request(params)
              query = Phoebe::Internal::Util.encode_query_params(parsed)
              region_code =
                parsed.delete(:region_code) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              y_ =
                parsed.delete(:y_) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              m =
                parsed.delete(:m) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :get,
                path: ["data/obs/%1$s/historic/%2$s/%3$s/%4$s", region_code, y_, m, d],
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
