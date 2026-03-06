# frozen_string_literal: true

module Phoebe
  module Models
    module Ref
      # @see Phoebe::Resources::Ref::Hotspot#list
      class HotspotListParams < Phoebe::Internal::Type::BaseModel
        extend Phoebe::Internal::Type::RequestParameters::Converter
        include Phoebe::Internal::Type::RequestParameters

        # @!attribute region_code
        #
        #   @return [String]
        required :region_code, String

        # @!attribute back
        #   The number of days back to fetch hotspots.
        #
        #   @return [Integer, nil]
        optional :back, Integer

        # @!attribute fmt
        #   Fetch the records in CSV or JSON format.
        #
        #   @return [Symbol, Phoebe::Models::Ref::HotspotListParams::Fmt, nil]
        optional :fmt, enum: -> { Phoebe::Ref::HotspotListParams::Fmt }

        # @!method initialize(region_code:, back: nil, fmt: nil, request_options: {})
        #   @param region_code [String]
        #
        #   @param back [Integer] The number of days back to fetch hotspots.
        #
        #   @param fmt [Symbol, Phoebe::Models::Ref::HotspotListParams::Fmt] Fetch the records in CSV or JSON format.
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
