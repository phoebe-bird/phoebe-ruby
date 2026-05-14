# frozen_string_literal: true

module Phoebe
  module Models
    module Product
      # @see Phoebe::Resources::Product::SpeciesList#list
      class SpeciesListListParams < Phoebe::Internal::Type::BaseModel
        extend Phoebe::Internal::Type::RequestParameters::Converter
        include Phoebe::Internal::Type::RequestParameters

        # @!attribute region_code
        #
        #   @return [String]
        required :region_code, String

        # @!method initialize(region_code:, request_options: {})
        #   @param region_code [String]
        #   @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
