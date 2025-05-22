# frozen_string_literal: true

module Phoebe
  module Models
    module Ref
      module Hotspot
        # @see Phoebe::Resources::Ref::Hotspot::Geo#retrieve
        class GeoRetrieveParams < Phoebe::Internal::Type::BaseModel
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
          #   The number of days back to fetch hotspots.
          #
          #   @return [Integer, nil]
          optional :back, Integer

          # @!attribute dist
          #   The search radius from the given position, in kilometers.
          #
          #   @return [Integer, nil]
          optional :dist, Integer

          # @!attribute fmt
          #   Fetch the records in CSV or JSON format.
          #
          #   @return [Symbol, Phoebe::Models::Ref::Hotspot::GeoRetrieveParams::Fmt, nil]
          optional :fmt, enum: -> { Phoebe::Ref::Hotspot::GeoRetrieveParams::Fmt }

          # @!method initialize(lat:, lng:, back: nil, dist: nil, fmt: nil, request_options: {})
          #   @param lat [Float]
          #
          #   @param lng [Float]
          #
          #   @param back [Integer] The number of days back to fetch hotspots.
          #
          #   @param dist [Integer] The search radius from the given position, in kilometers.
          #
          #   @param fmt [Symbol, Phoebe::Models::Ref::Hotspot::GeoRetrieveParams::Fmt] Fetch the records in CSV or JSON format.
          #
          #   @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}]

          # Fetch the records in CSV or JSON format.
          module Fmt
            extend Phoebe::Internal::Type::Enum

            CSV = :csv
            JSON = :json

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
