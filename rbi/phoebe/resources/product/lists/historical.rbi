# typed: strong

module Phoebe
  module Resources
    class Product
      class Lists
        class Historical
          # Get information on the checklists submitted on a given date for a country or
          # region.
          sig do
            params(
              d: Integer,
              region_code: String,
              y_: Integer,
              m: Integer,
              max_results: Integer,
              sort_key:
                Phoebe::Product::Lists::HistoricalRetrieveParams::SortKey::OrSymbol,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(
              T::Array[
                Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem
              ]
            )
          end
          def retrieve(
            # Path param: The day in the month.
            d,
            # Path param: The country, subnational1, subnational2 or location code.
            region_code:,
            # Path param: The year, from 1800 to the present.
            y_:,
            # Path param: The month, from 1-12.
            m:,
            # Query param: Only fetch this number of checklists.
            max_results: nil,
            # Query param: Order the results by the date of the checklist or by the date it
            # was submitted.
            sort_key: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Phoebe::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
