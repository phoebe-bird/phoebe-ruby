# typed: strong

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
        sig { returns(Phoebe::Resources::Product::Lists::Historical) }
        attr_reader :historical

        # Get information on the most recently submitted checklists for a region.
        sig do
          params(
            region_code: String,
            max_results: Integer,
            request_options: Phoebe::RequestOptions::OrHash
          ).returns(T::Array[Phoebe::Models::Product::ListRetrieveResponseItem])
        end
        def retrieve(
          # The country, subnational1, subnational2 or location code.
          region_code,
          # Only fetch this number of checklists.
          max_results: nil,
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
