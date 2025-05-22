# frozen_string_literal: true

module Phoebe
  module Models
    module Data
      module Observations
        module Recent
          # @see Phoebe::Resources::Data::Observations::Recent::Notable#list
          class NotableListParams < Phoebe::Internal::Type::BaseModel
            extend Phoebe::Internal::Type::RequestParameters::Converter
            include Phoebe::Internal::Type::RequestParameters

            # @!attribute back
            #   The number of days back to fetch observations.
            #
            #   @return [Integer, nil]
            optional :back, Integer

            # @!attribute detail
            #   Include a subset (simple), or all (full), of the fields available.
            #
            #   @return [Symbol, Phoebe::Models::Data::Observations::Recent::NotableListParams::Detail, nil]
            optional :detail, enum: -> { Phoebe::Data::Observations::Recent::NotableListParams::Detail }

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

            # @!method initialize(back: nil, detail: nil, hotspot: nil, max_results: nil, r: nil, spp_locale: nil, request_options: {})
            #   @param back [Integer] The number of days back to fetch observations.
            #
            #   @param detail [Symbol, Phoebe::Models::Data::Observations::Recent::NotableListParams::Detail] Include a subset (simple), or all (full), of the fields available.
            #
            #   @param hotspot [Boolean] Only fetch observations from hotspots
            #
            #   @param max_results [Integer] Only fetch this number of observations
            #
            #   @param r [Array<String>] Fetch observations from up to 10 locations
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
