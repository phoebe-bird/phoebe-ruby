# frozen_string_literal: true

module Phoebe
  module Models
    module Product
      # @see Phoebe::Resources::Product::Top100#retrieve
      class Top100RetrieveParams < Phoebe::Internal::Type::BaseModel
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

        # @!attribute max_results
        #   Only fetch this number of contributors.
        #
        #   @return [Integer, nil]
        optional :max_results, Integer

        # @!attribute ranked_by
        #   Order by number of complete checklists (cl) or by number of species seen (spp).
        #
        #   @return [Symbol, Phoebe::Models::Product::Top100RetrieveParams::RankedBy, nil]
        optional :ranked_by, enum: -> { Phoebe::Product::Top100RetrieveParams::RankedBy }

        # @!method initialize(region_code:, y_:, m:, max_results: nil, ranked_by: nil, request_options: {})
        #   @param region_code [String]
        #
        #   @param y_ [Integer]
        #
        #   @param m [Integer]
        #
        #   @param max_results [Integer] Only fetch this number of contributors.
        #
        #   @param ranked_by [Symbol, Phoebe::Models::Product::Top100RetrieveParams::RankedBy] Order by number of complete checklists (cl) or by number of species seen (spp).
        #
        #   @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}]

        # Order by number of complete checklists (cl) or by number of species seen (spp).
        module RankedBy
          extend Phoebe::Internal::Type::Enum

          SPP = :spp
          CL = :cl

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
