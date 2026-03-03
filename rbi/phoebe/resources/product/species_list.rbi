# typed: strong

module Phoebe
  module Resources
    class Product
      # The product end-points make it easy to get the information shown in various
      # pages on the eBird web site: 1. The Top 100 contributors on a given date. 2. The
      # checklists submitted on a given date. 3. The most recent checklists
      # submitted. 4. A summary of the checklists submitted on a given date. 5. The
      # details and all the observations of a checklist.
      class SpeciesList
        # Get a list of species codes ever seen in a region, in taxonomic order (species
        # taxa only)
        #
        # #### Notes The results are usually updated every 10 seconds for locations, every day for larger regions.
        sig do
          params(
            region_code: String,
            request_options: Phoebe::RequestOptions::OrHash
          ).returns(T::Array[String])
        end
        def list(
          # Any location, USFWS region, subnational2, subnational1, country, or custom
          # region code
          region_code,
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
