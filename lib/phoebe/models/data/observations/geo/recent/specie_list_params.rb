# frozen_string_literal: true

module Phoebe
  module Models
    module Data
      module Observations
        module Geo
          module Recent
            # @see Phoebe::Resources::Data::Observations::Geo::Recent::Species#list
            class SpecieListParams < Phoebe::Internal::Type::BaseModel
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

              # @!attribute spp_locale
              #   Use this language for species common names
              #
              #   @return [String, nil]
              optional :spp_locale, String

              # @!method initialize(lat:, lng:, back: nil, dist: nil, hotspot: nil, include_provisional: nil, max_results: nil, spp_locale: nil, request_options: {})
              #   @param lat [Float]
              #
              #   @param lng [Float]
              #
              #   @param back [Integer] The number of days back to fetch observations.
              #
              #   @param dist [Integer] The search radius from the given position, in kilometers.
              #
              #   @param hotspot [Boolean] Only fetch observations from hotspots
              #
              #   @param include_provisional [Boolean] Include observations which have not yet been reviewed.
              #
              #   @param max_results [Integer] Only fetch this number of observations
              #
              #   @param spp_locale [String] Use this language for species common names
              #
              #   @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}]
            end
          end
        end
      end
    end
  end
end
