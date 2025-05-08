# frozen_string_literal: true

module Phoebe
  module Resources
    class Product
      class SpeciesList
        # Some parameter documentations has been truncated, see
        # {Phoebe::Models::Product::SpeciesListListParams} for more details.
        #
        # Get a list of species codes ever seen in a region, in taxonomic order (species
        # taxa only)
        #
        # #### Notes The results are usually updated every 10 seconds for locations, every day for larger regions.
        #
        # @overload list(region_code, request_options: {})
        #
        # @param region_code [String] Any location, USFWS region, subnational2, subnational1, country, or custom regio
        #
        # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<String>]
        #
        # @see Phoebe::Models::Product::SpeciesListListParams
        def list(region_code, params = {})
          @client.request(
            method: :get,
            path: ["product/spplist/%1$s", region_code],
            model: Phoebe::Internal::Type::ArrayOf[String],
            options: params[:request_options]
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
