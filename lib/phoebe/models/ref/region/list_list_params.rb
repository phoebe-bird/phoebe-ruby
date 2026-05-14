# frozen_string_literal: true

module Phoebe
  module Models
    module Ref
      module Region
        # @see Phoebe::Resources::Ref::Region::List#list
        class ListListParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          # @!attribute region_type
          #
          #   @return [String]
          required :region_type, String

          # @!attribute parent_region_code
          #
          #   @return [String]
          required :parent_region_code, String

          # @!attribute fmt
          #   Fetch the records in CSV or JSON format.
          #
          #   @return [Symbol, Phoebe::Models::Ref::Region::ListListParams::Fmt, nil]
          optional :fmt, enum: -> { Phoebe::Ref::Region::ListListParams::Fmt }

          # @!method initialize(region_type:, parent_region_code:, fmt: nil, request_options: {})
          #   @param region_type [String]
          #
          #   @param parent_region_code [String]
          #
          #   @param fmt [Symbol, Phoebe::Models::Ref::Region::ListListParams::Fmt] Fetch the records in CSV or JSON format.
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
