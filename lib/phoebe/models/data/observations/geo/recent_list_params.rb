# frozen_string_literal: true

module Phoebe
  module Models
    module Data
      module Observations
        module Geo
          # @see Phoebe::Resources::Data::Observations::Geo::Recent#list
          class RecentListParams < Phoebe::Internal::Type::BaseModel
            extend Phoebe::Internal::Type::RequestParameters::Converter
            include Phoebe::Internal::Type::RequestParameters

            # @!attribute lat
            #
            #   @return [Float]
            required :lat, Float

            # @!attribute lng
            #
            #   @return [Float]
            required :lng, Float

            # @!attribute back
            #   The number of days back to fetch observations.
            #
            #   @return [Integer, nil]
            optional :back, Integer

            # @!attribute cat
            #   Only fetch observations from these taxonomic categories
            #
            #   @return [Symbol, Phoebe::Data::Observations::Geo::RecentListParams::Cat, nil]
            optional :cat, enum: -> { Phoebe::Data::Observations::Geo::RecentListParams::Cat }

            # @!attribute dist
            #   The search radius from the given position, in kilometers.
            #
            #   @return [Integer, nil]
            optional :dist, Integer

            # @!attribute hotspot
            #   Only fetch observations from hotspots
            #
            #   @return [Boolean, nil]
            optional :hotspot, Phoebe::Internal::Type::Boolean

            # @!attribute include_provisional
            #   Include observations which have not yet been reviewed.
            #
            #   @return [Boolean, nil]
            optional :include_provisional, Phoebe::Internal::Type::Boolean

            # @!attribute max_results
            #   Only fetch this number of observations
            #
            #   @return [Integer, nil]
            optional :max_results, Integer

            # @!attribute sort
            #   Sort observations by taxonomy or by date, most recent first.
            #
            #   @return [Symbol, Phoebe::Data::Observations::Geo::RecentListParams::Sort, nil]
            optional :sort, enum: -> { Phoebe::Data::Observations::Geo::RecentListParams::Sort }

            # @!attribute spp_locale
            #   Use this language for species common names
            #
            #   @return [String, nil]
            optional :spp_locale, String

            # @!method initialize(lat:, lng:, back: nil, cat: nil, dist: nil, hotspot: nil, include_provisional: nil, max_results: nil, sort: nil, spp_locale: nil, request_options: {})
            #   @param lat [Float]
            #
            #   @param lng [Float]
            #
            #   @param back [Integer] The number of days back to fetch observations.
            #
            #   @param cat [Symbol, Phoebe::Data::Observations::Geo::RecentListParams::Cat] Only fetch observations from these taxonomic categories
            #
            #   @param dist [Integer] The search radius from the given position, in kilometers.
            #
            #   @param hotspot [Boolean] Only fetch observations from hotspots
            #
            #   @param include_provisional [Boolean] Include observations which have not yet been reviewed.
            #
            #   @param max_results [Integer] Only fetch this number of observations
            #
            #   @param sort [Symbol, Phoebe::Data::Observations::Geo::RecentListParams::Sort] Sort observations by taxonomy or by date, most recent first.
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

            # Sort observations by taxonomy or by date, most recent first.
            module Sort
              extend Phoebe::Internal::Type::Enum

              DATE = :date
              SPECIES = :species

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
