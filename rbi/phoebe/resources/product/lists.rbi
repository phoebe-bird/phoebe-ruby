# typed: strong

module Phoebe
  module Resources
    class Product
      class Lists
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
