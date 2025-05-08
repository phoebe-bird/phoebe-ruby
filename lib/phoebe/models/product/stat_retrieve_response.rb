# frozen_string_literal: true

module Phoebe
  module Models
    module Product
      # @see Phoebe::Resources::Product::Stats#retrieve
      class StatRetrieveResponse < Phoebe::Internal::Type::BaseModel
        # @!attribute num_checklists
        #
        #   @return [Integer, nil]
        optional :num_checklists, Integer, api_name: :numChecklists

        # @!attribute num_contributors
        #
        #   @return [Integer, nil]
        optional :num_contributors, Integer, api_name: :numContributors

        # @!attribute num_species
        #
        #   @return [Integer, nil]
        optional :num_species, Integer, api_name: :numSpecies

        # @!method initialize(num_checklists: nil, num_contributors: nil, num_species: nil)
        #   @param num_checklists [Integer]
        #   @param num_contributors [Integer]
        #   @param num_species [Integer]
      end
    end
  end
end
