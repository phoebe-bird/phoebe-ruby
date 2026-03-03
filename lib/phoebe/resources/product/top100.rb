# frozen_string_literal: true

module Phoebe
  module Resources
    class Product
      # The product end-points make it easy to get the information shown in various
      # pages on the eBird web site: 1. The Top 100 contributors on a given date. 2. The
      # checklists submitted on a given date. 3. The most recent checklists
      # submitted. 4. A summary of the checklists submitted on a given date. 5. The
      # details and all the observations of a checklist.
      class Top100
        # Some parameter documentations has been truncated, see
        # {Phoebe::Models::Product::Top100RetrieveParams} for more details.
        #
        # Get the top 100 contributors on a given date for a country or region.
        #
        # #### Notes
        #
        # The results are updated every 15 minutes.
        #
        # When ordering by the number of completed checklists, the number of species seen
        # will always be zero. Similarly when ordering by the number of species seen the
        # number of completed checklists will always be zero. <b>Selected Response Field
        # Notes</b>
        #
        # profileHandle - if a user has enabled their profile, this is the handle to reach
        # it via ebird.org/ebird/profile/{profileHandle}
        #
        # numSpecies - always zero when checklistSort parameter is true. Invalid
        # observations ARE included in this total numCompleteChecklists - always zero when
        # checklistSort parameter is false
        #
        # @overload retrieve(d, region_code:, y_:, m:, max_results: nil, ranked_by: nil, request_options: {})
        #
        # @param d [Integer] Path param: The day in the month.
        #
        # @param region_code [String] Path param: The country, subnational1, or location code.
        #
        # @param y_ [Integer] Path param: The year, from 1800 to the present.
        #
        # @param m [Integer] Path param: The month, from 1-12.
        #
        # @param max_results [Integer] Query param: Only fetch this number of contributors.
        #
        # @param ranked_by [Symbol, Phoebe::Models::Product::Top100RetrieveParams::RankedBy] Query param: Order by number of complete checklists (cl) or by number of species
        #
        # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Phoebe::Models::Product::Top100RetrieveResponseItem>]
        #
        # @see Phoebe::Models::Product::Top100RetrieveParams
        def retrieve(d, params)
          parsed, options = Phoebe::Product::Top100RetrieveParams.dump_request(params)
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
            path: ["product/top100/%1$s/%2$s/%3$s/%4$s", region_code, y_, m, d],
            query: query.transform_keys(max_results: "maxResults", ranked_by: "rankedBy"),
            model: Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Product::Top100RetrieveResponseItem],
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
