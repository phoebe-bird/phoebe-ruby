# frozen_string_literal: true

module Phoebe
  module Models
    module Product
      # @see Phoebe::Resources::Product::Stats#retrieve
      class StatRetrieveParams < Phoebe::Internal::Type::BaseModel
        extend Phoebe::Internal::Type::RequestParameters::Converter
        include Phoebe::Internal::Type::RequestParameters

        # @!attribute region_code
        #
        #   @return [String]
        required :region_code, String

        # @!attribute y_
        #
        #   @return [Integer]
        required :y_, Integer

        # @!attribute m
        #
        #   @return [Integer]
        required :m, Integer

        # @!attribute d
        #
        #   @return [Integer]
        required :d, Integer

        # @!method initialize(region_code:, y_:, m:, d:, request_options: {})
        #   @param region_code [String]
        #   @param y_ [Integer]
        #   @param m [Integer]
        #   @param d [Integer]
        #   @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
