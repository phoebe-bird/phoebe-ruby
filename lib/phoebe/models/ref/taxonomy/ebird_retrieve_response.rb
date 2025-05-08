# frozen_string_literal: true

module Phoebe
  module Models
    module Ref
      module Taxonomy
        class EbirdRetrieveResponseItem < Phoebe::Internal::Type::BaseModel
          # @!attribute banding_codes
          #
          #   @return [Array<String>, nil]
          optional :banding_codes, Phoebe::Internal::Type::ArrayOf[String], api_name: :bandingCodes

          # @!attribute category
          #
          #   @return [String, nil]
          optional :category, String

          # @!attribute com_name
          #
          #   @return [String, nil]
          optional :com_name, String, api_name: :comName

          # @!attribute com_name_codes
          #
          #   @return [Array<String>, nil]
          optional :com_name_codes, Phoebe::Internal::Type::ArrayOf[String], api_name: :comNameCodes

          # @!attribute family_code
          #
          #   @return [String, nil]
          optional :family_code, String, api_name: :familyCode

          # @!attribute family_com_name
          #
          #   @return [String, nil]
          optional :family_com_name, String, api_name: :familyComName

          # @!attribute family_sci_name
          #
          #   @return [String, nil]
          optional :family_sci_name, String, api_name: :familySciName

          # @!attribute order
          #
          #   @return [String, nil]
          optional :order, String

          # @!attribute sci_name
          #
          #   @return [String, nil]
          optional :sci_name, String, api_name: :sciName

          # @!attribute sci_name_codes
          #
          #   @return [Array<String>, nil]
          optional :sci_name_codes, Phoebe::Internal::Type::ArrayOf[String], api_name: :sciNameCodes

          # @!attribute species_code
          #
          #   @return [String, nil]
          optional :species_code, String, api_name: :speciesCode

          # @!attribute taxon_order
          #
          #   @return [Integer, nil]
          optional :taxon_order, Integer, api_name: :taxonOrder

          # @!method initialize(banding_codes: nil, category: nil, com_name: nil, com_name_codes: nil, family_code: nil, family_com_name: nil, family_sci_name: nil, order: nil, sci_name: nil, sci_name_codes: nil, species_code: nil, taxon_order: nil)
          #   @param banding_codes [Array<String>]
          #   @param category [String]
          #   @param com_name [String]
          #   @param com_name_codes [Array<String>]
          #   @param family_code [String]
          #   @param family_com_name [String]
          #   @param family_sci_name [String]
          #   @param order [String]
          #   @param sci_name [String]
          #   @param sci_name_codes [Array<String>]
          #   @param species_code [String]
          #   @param taxon_order [Integer]
        end

        # @type [Phoebe::Internal::Type::Converter]
        EbirdRetrieveResponse =
          Phoebe::Internal::Type::ArrayOf[-> { Phoebe::Models::Ref::Taxonomy::EbirdRetrieveResponseItem }]
      end
    end
  end
end
