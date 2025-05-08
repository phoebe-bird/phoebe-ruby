# frozen_string_literal: true

module Phoebe
  module Models
    module Data
      module Observations
        module Geo
          module Recent
            # @see Phoebe::Resources::Data::Observations::Geo::Recent::Notable#list
            class NotableListParams < Phoebe::Internal::Type::BaseModel
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

              # @!attribute detail
              #   Include a subset (simple), or all (full), of the fields available.
              #
              #   @return [Symbol, Phoebe::Data::Observations::Geo::Recent::NotableListParams::Detail, nil]
              optional :detail,
                       enum: -> {
                         Phoebe::Data::Observations::Geo::Recent::NotableListParams::Detail
                       }

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

              # @!method initialize(lat:, lng:, back: nil, detail: nil, dist: nil, hotspot: nil, max_results: nil, spp_locale: nil, request_options: {})
              #   @param lat [Float]
              #
              #   @param lng [Float]
              #
              #   @param back [Integer] The number of days back to fetch observations.
              #
              #   @param detail [Symbol, Phoebe::Data::Observations::Geo::Recent::NotableListParams::Detail] Include a subset (simple), or all (full), of the fields available.
              #
              #   @param dist [Integer] The search radius from the given position, in kilometers.
              #
              #   @param hotspot [Boolean] Only fetch observations from hotspots
              #
              #   @param max_results [Integer] Only fetch this number of observations
              #
              #   @param spp_locale [String] Use this language for species common names
              #
              #   @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}]

              # Include a subset (simple), or all (full), of the fields available.
              module Detail
                extend Phoebe::Internal::Type::Enum

                SIMPLE = :simple
                FULL = :full

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end
      end
    end
  end
end
