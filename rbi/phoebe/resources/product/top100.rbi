# typed: strong

module Phoebe
  module Resources
    class Product
      class Top100
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
        sig do
          params(
            d: Integer,
            region_code: String,
            y_: Integer,
            m: Integer,
            max_results: Integer,
            ranked_by:
              Phoebe::Product::Top100RetrieveParams::RankedBy::OrSymbol,
            request_options: Phoebe::RequestOptions::OrHash
          ).returns(
            T::Array[Phoebe::Models::Product::Top100RetrieveResponseItem]
          )
        end
        def retrieve(
          # Path param: The day in the month.
          d,
          # Path param: The country, subnational1, or location code.
          region_code:,
          # Path param: The year, from 1800 to the present.
          y_:,
          # Path param: The month, from 1-12.
          m:,
          # Query param: Only fetch this number of contributors.
          max_results: nil,
          # Query param: Order by number of complete checklists (cl) or by number of species
          # seen (spp).
          ranked_by: nil,
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
