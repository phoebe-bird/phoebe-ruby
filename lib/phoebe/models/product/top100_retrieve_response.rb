# frozen_string_literal: true

module Phoebe
  module Models
    module Product
      class Top100RetrieveResponseItem < Phoebe::Internal::Type::BaseModel
        # @!attribute num_complete_checklists
        #
        #   @return [Integer, nil]
        optional :num_complete_checklists, Integer, api_name: :numCompleteChecklists

        # @!attribute num_species
        #
        #   @return [Integer, nil]
        optional :num_species, Integer, api_name: :numSpecies

        # @!attribute profile_handle
        #
        #   @return [String, nil]
        optional :profile_handle, String, api_name: :profileHandle

        # @!attribute row_num
        #
        #   @return [Integer, nil]
        optional :row_num, Integer, api_name: :rowNum

        # @!attribute user_display_name
        #
        #   @return [String, nil]
        optional :user_display_name, String, api_name: :userDisplayName

        # @!attribute user_id
        #
        #   @return [String, nil]
        optional :user_id, String, api_name: :userId

        # @!method initialize(num_complete_checklists: nil, num_species: nil, profile_handle: nil, row_num: nil, user_display_name: nil, user_id: nil)
        #   @param num_complete_checklists [Integer]
        #   @param num_species [Integer]
        #   @param profile_handle [String]
        #   @param row_num [Integer]
        #   @param user_display_name [String]
        #   @param user_id [String]
      end

      # @type [Phoebe::Internal::Type::Converter]
      Top100RetrieveResponse =
        Phoebe::Internal::Type::ArrayOf[-> { Phoebe::Models::Product::Top100RetrieveResponseItem }]
    end
  end
end
