# frozen_string_literal: true

module Phoebe
  module Resources
    class Product
      # The data/obs end-points are used to fetch observations submitted to eBird in
      # checklists. There are two categories of end-point: 1. Fetch observations for a
      # specific country, region or location. 2. Fetch observations for nearby
      # locations - up to a distance of 50km. Each end-point supports optional query
      # parameters which allow you to filter the list of observations returned.
      class Lists
        # The product end-points make it easy to get the information shown in various
        # pages on the eBird web site: 1. The Top 100 contributors on a given date. 2. The
        # checklists submitted on a given date. 3. The most recent checklists
        # submitted. 4. A summary of the checklists submitted on a given date. 5. The
        # details and all the observations of a checklist.
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
          query = Phoebe::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["product/lists/%1$s", region_code],
            query: query.transform_keys(max_results: "maxResults"),
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
