# frozen_string_literal: true

module Phoebe
  module Resources
    class Data
      class Observations
        class Recent
          class Notable
            # Get the list of recent, notable observations (up to 30 days ago) of birds seen
            # in a country, region or location. Notable observations can be for locally or
            # nationally rare species or are otherwise unusual, e.g. over-wintering birds in a
            # species which is normally only a summer visitor.
            #
            # @overload list(region_code, back: nil, detail: nil, hotspot: nil, max_results: nil, r: nil, spp_locale: nil, request_options: {})
            #
            # @param region_code [String] The country, subnational1, subnational2 or location code.
            #
            # @param back [Integer] The number of days back to fetch observations.
            #
            # @param detail [Symbol, Phoebe::Data::Observations::Recent::NotableListParams::Detail] Include a subset (simple), or all (full), of the fields available.
            #
            # @param hotspot [Boolean] Only fetch observations from hotspots
            #
            # @param max_results [Integer] Only fetch this number of observations
            #
            # @param r [Array<String>] Fetch observations from up to 10 locations
            #
            # @param spp_locale [String] Use this language for species common names
            #
            # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Array<Phoebe::Data::Observation>]
            #
            # @see Phoebe::Models::Data::Observations::Recent::NotableListParams
            def list(region_code, params = {})
              parsed, options = Phoebe::Data::Observations::Recent::NotableListParams.dump_request(params)
              @client.request(
                method: :get,
                path: ["data/obs/%1$s/recent/notable", region_code],
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
