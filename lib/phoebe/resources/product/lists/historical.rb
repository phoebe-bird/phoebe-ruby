# frozen_string_literal: true

module Phoebe
  module Resources
    class Product
      class Lists
        class Historical
          # Some parameter documentations has been truncated, see
          # {Phoebe::Models::Product::Lists::HistoricalRetrieveParams} for more details.
          #
          # Get information on the checklists submitted on a given date for a country or
          # region.
          #
          # @overload retrieve(d, region_code:, y_:, m:, max_results: nil, sort_key: nil, request_options: {})
          #
          # @param d [Integer] Path param: The day in the month.
          #
          # @param region_code [String] Path param: The country, subnational1, subnational2 or location code.
          #
          # @param y_ [Integer] Path param: The year, from 1800 to the present.
          #
          # @param m [Integer] Path param: The month, from 1-12.
          #
          # @param max_results [Integer] Query param: Only fetch this number of checklists.
          #
          # @param sort_key [Symbol, Phoebe::Models::Product::Lists::HistoricalRetrieveParams::SortKey] Query param: Order the results by the date of the checklist or by the date it wa
          #
          # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem>]
          #
          # @see Phoebe::Models::Product::Lists::HistoricalRetrieveParams
          def retrieve(d, params)
            parsed, options = Phoebe::Product::Lists::HistoricalRetrieveParams.dump_request(params)
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
              path: ["product/lists/%1$s/%2$s/%3$s/%4$s", region_code, y_, m, d],
              query: parsed.transform_keys(max_results: "maxResults", sort_key: "sortKey"),
              model: Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem],
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
