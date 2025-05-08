# frozen_string_literal: true

module Phoebe
  module Resources
    class Product
      class Stats
        # Get a summary of the number of checklist submitted, species seen and
        # contributors on a given date for a country or region.
        #
        # #### Notes The results are updated every 15 minutes.
        #
        # @overload retrieve(d, region_code:, y_:, m:, request_options: {})
        #
        # @param d [Integer] The day in the month.
        #
        # @param region_code [String] The country, subnational1, subnational2 or location code.
        #
        # @param y_ [Integer] The year, from 1800 to the present.
        #
        # @param m [Integer] The month, from 1-12.
        #
        # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Phoebe::Models::Product::StatRetrieveResponse]
        #
        # @see Phoebe::Models::Product::StatRetrieveParams
        def retrieve(d, params)
          parsed, options = Phoebe::Product::StatRetrieveParams.dump_request(params)
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
            path: ["product/stats/%1$s/%2$s/%3$s/%4$s", region_code, y_, m, d],
            model: Phoebe::Models::Product::StatRetrieveResponse,
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
