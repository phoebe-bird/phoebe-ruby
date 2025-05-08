# typed: strong

module Phoebe
  module Resources
    class Product
      class Stats
        # Get a summary of the number of checklist submitted, species seen and
        # contributors on a given date for a country or region.
        #
        # #### Notes The results are updated every 15 minutes.
        sig do
          params(
            d: Integer,
            region_code: String,
            y_: Integer,
            m: Integer,
            request_options: Phoebe::RequestOptions::OrHash
          ).returns(Phoebe::Models::Product::StatRetrieveResponse)
        end
        def retrieve(
          # The day in the month.
          d,
          # The country, subnational1, subnational2 or location code.
          region_code:,
          # The year, from 1800 to the present.
          y_:,
          # The month, from 1-12.
          m:,
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
