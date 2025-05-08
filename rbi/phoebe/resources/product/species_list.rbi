# typed: strong

module Phoebe
  module Resources
    class Product
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
