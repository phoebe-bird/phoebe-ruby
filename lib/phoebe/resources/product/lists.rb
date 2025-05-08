# frozen_string_literal: true

module Phoebe
  module Resources
    class Product
      class Lists
        # @return [Phoebe::Resources::Product::Lists::Historical]
        attr_reader :historical

        # Get information on the most recently submitted checklists for a region.
        #
        # @overload retrieve(region_code, max_results: nil, request_options: {})
        #
        # @param region_code [String] The country, subnational1, subnational2 or location code.
        #
        # @param max_results [Integer] Only fetch this number of checklists.
        #
        # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Phoebe::Models::Product::ListRetrieveResponseItem>]
        #
        # @see Phoebe::Models::Product::ListRetrieveParams
        def retrieve(region_code, params = {})
          parsed, options = Phoebe::Product::ListRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["product/lists/%1$s", region_code],
            query: parsed.transform_keys(max_results: "maxResults"),
            model: Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Product::ListRetrieveResponseItem],
            options: options
          )
        end

        # @api private
        #
        # @param client [Phoebe::Client]
        def initialize(client:)
          @client = client
          @historical = Phoebe::Resources::Product::Lists::Historical.new(client: client)
        end
      end
    end
  end
end
