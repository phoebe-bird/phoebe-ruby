# frozen_string_literal: true

module Phoebe
  module Models
    module Ref
      module Region
        # @see Phoebe::Resources::Ref::Region::Info#retrieve
        class InfoRetrieveParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          # @!attribute region_code
          #
          #   @return [String]
          required :region_code, String

          # @!attribute delim
          #   The characters used to separate elements in the name.
          #
          #   @return [String, nil]
          optional :delim, String

          # @!attribute region_name_format
          #   Control how the name is displayed.
          #
          #   @return [Symbol, Phoebe::Models::Ref::Region::InfoRetrieveParams::RegionNameFormat, nil]
          optional :region_name_format, enum: -> { Phoebe::Ref::Region::InfoRetrieveParams::RegionNameFormat }

          # @!method initialize(region_code:, delim: nil, region_name_format: nil, request_options: {})
          #   @param region_code [String]
          #
          #   @param delim [String] The characters used to separate elements in the name.
          #
          #   @param region_name_format [Symbol, Phoebe::Models::Ref::Region::InfoRetrieveParams::RegionNameFormat] Control how the name is displayed.
          #
          #   @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}]

          # Control how the name is displayed.
          module RegionNameFormat
            extend Phoebe::Internal::Type::Enum

            DETAILED = :detailed
            DETAILEDNOQUAL = :detailednoqual
            FULL = :full
            NAMEQUAL = :namequal
            NAMEONLY = :nameonly
            REVDETAILED = :revdetailed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
