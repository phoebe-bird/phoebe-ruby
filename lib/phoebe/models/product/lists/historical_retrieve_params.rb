# frozen_string_literal: true

module Phoebe
  module Models
    module Product
      module Lists
        # @see Phoebe::Resources::Product::Lists::Historical#retrieve
        class HistoricalRetrieveParams < Phoebe::Internal::Type::BaseModel
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

          # @!attribute max_results
          #   Only fetch this number of checklists.
          #
          #   @return [Integer, nil]
          optional :max_results, Integer

          # @!attribute sort_key
          #   Order the results by the date of the checklist or by the date it was submitted.
          #
          #   @return [Symbol, Phoebe::Models::Product::Lists::HistoricalRetrieveParams::SortKey, nil]
          optional :sort_key, enum: -> { Phoebe::Product::Lists::HistoricalRetrieveParams::SortKey }

          # @!method initialize(region_code:, y_:, m:, d:, max_results: nil, sort_key: nil, request_options: {})
          #   @param region_code [String]
          #
          #   @param y_ [Integer]
          #
          #   @param m [Integer]
          #
          #   @param d [Integer]
          #
          #   @param max_results [Integer] Only fetch this number of checklists.
          #
          #   @param sort_key [Symbol, Phoebe::Models::Product::Lists::HistoricalRetrieveParams::SortKey] Order the results by the date of the checklist or by the date it was submitted.
          #
          #   @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}]

          # Order the results by the date of the checklist or by the date it was submitted.
          module SortKey
            extend Phoebe::Internal::Type::Enum

            OBS_DT = :obs_dt
            CREATION_DT = :creation_dt

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
