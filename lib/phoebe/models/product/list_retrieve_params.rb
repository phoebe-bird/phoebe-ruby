# frozen_string_literal: true

module Phoebe
  module Models
    module Product
      # @see Phoebe::Resources::Product::Lists#retrieve
      class ListRetrieveParams < Phoebe::Internal::Type::BaseModel
        extend Phoebe::Internal::Type::RequestParameters::Converter
        include Phoebe::Internal::Type::RequestParameters

        # @!attribute region_code
        #
        #   @return [String]
        required :region_code, String

        # @!attribute max_results
        #   Only fetch this number of checklists.
        #
        #   @return [Integer, nil]
        optional :max_results, Integer

        # @!method initialize(region_code:, max_results: nil, request_options: {})
        #   @param region_code [String]
        #
        #   @param max_results [Integer] Only fetch this number of checklists.
        #
        #   @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
