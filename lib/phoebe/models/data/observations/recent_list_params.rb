# frozen_string_literal: true

module Phoebe
  module Models
    module Data
      module Observations
        # @see Phoebe::Resources::Data::Observations::Recent#list
        class RecentListParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          # @!attribute region_code
          #
          #   @return [String]
          required :region_code, String

          # @!attribute back
          #   The number of days back to fetch observations.
          #
          #   @return [Integer, nil]
          optional :back, Integer

          # @!attribute cat
          #   Only fetch observations from these taxonomic categories
          #
          #   @return [Symbol, Phoebe::Models::Data::Observations::RecentListParams::Cat, nil]
          optional :cat, enum: -> { Phoebe::Data::Observations::RecentListParams::Cat }

          # @!attribute hotspot
          #   Only fetch observations from hotspots
          #
          #   @return [Boolean, nil]
          optional :hotspot, Phoebe::Internal::Type::Boolean

          # @!attribute include_provisional
          #   Include observations which have not yet been reviewed
          #
          #   @return [Boolean, nil]
          optional :include_provisional, Phoebe::Internal::Type::Boolean

          # @!attribute max_results
          #   Only fetch this number of observations
          #
          #   @return [Integer, nil]
          optional :max_results, Integer

          # @!attribute r
          #   Fetch observations from up to 10 locations
          #
          #   @return [Array<String>, nil]
          optional :r, Phoebe::Internal::Type::ArrayOf[String]

          # @!attribute spp_locale
          #   Use this language for species common names
          #
          #   @return [String, nil]
          optional :spp_locale, String

          # @!method initialize(region_code:, back: nil, cat: nil, hotspot: nil, include_provisional: nil, max_results: nil, r: nil, spp_locale: nil, request_options: {})
          #   @param region_code [String]
          #
          #   @param back [Integer] The number of days back to fetch observations.
          #
          #   @param cat [Symbol, Phoebe::Models::Data::Observations::RecentListParams::Cat] Only fetch observations from these taxonomic categories
          #
          #   @param hotspot [Boolean] Only fetch observations from hotspots
          #
          #   @param include_provisional [Boolean] Include observations which have not yet been reviewed
          #
          #   @param max_results [Integer] Only fetch this number of observations
          #
          #   @param r [Array<String>] Fetch observations from up to 10 locations
          #
          #   @param spp_locale [String] Use this language for species common names
          #
          #   @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}]

          # Only fetch observations from these taxonomic categories
          module Cat
            extend Phoebe::Internal::Type::Enum

            SPECIES = :species
            SLASH = :slash
            ISSF = :issf
            SPUH = :spuh
            HYBRID = :hybrid
            DOMESTIC = :domestic
            FORM = :form
            INTERGRADE = :intergrade

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
