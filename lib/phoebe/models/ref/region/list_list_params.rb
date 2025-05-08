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

          # @!attribute fmt
          #   Fetch the records in CSV or JSON format.
          #
          #   @return [Symbol, Phoebe::Ref::Region::ListListParams::Fmt, nil]
          optional :fmt, enum: -> { Phoebe::Ref::Region::ListListParams::Fmt }

          # @!method initialize(region_type:, fmt: nil, request_options: {})
          #   @param region_type [String]
          #
          #   @param fmt [Symbol, Phoebe::Ref::Region::ListListParams::Fmt] Fetch the records in CSV or JSON format.
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
