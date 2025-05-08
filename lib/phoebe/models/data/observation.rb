# frozen_string_literal: true

module Phoebe
  module Models
    module Data
      class Observation < Phoebe::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute com_name
        #
        #   @return [String, nil]
        optional :com_name, String, api_name: :comName

        # @!attribute firstname
        #
        #   @return [String, nil]
        optional :firstname, String

        # @!attribute how_many
        #
        #   @return [Integer, nil]
        optional :how_many, Integer, api_name: :howMany

        # @!attribute lastname
        #
        #   @return [String, nil]
        optional :lastname, String

        # @!attribute lat
        #
        #   @return [Float, nil]
        optional :lat, Float

        # @!attribute lng
        #
        #   @return [Float, nil]
        optional :lng, Float

        # @!attribute location_private
        #
        #   @return [Boolean, nil]
        optional :location_private, Phoebe::Internal::Type::Boolean, api_name: :locationPrivate

        # @!attribute loc_id
        #
        #   @return [String, nil]
        optional :loc_id, String, api_name: :locId

        # @!attribute loc_name
        #
        #   @return [String, nil]
        optional :loc_name, String, api_name: :locName

        # @!attribute obs_dt
        #
        #   @return [String, nil]
        optional :obs_dt, String, api_name: :obsDt

        # @!attribute obs_reviewed
        #
        #   @return [Boolean, nil]
        optional :obs_reviewed, Phoebe::Internal::Type::Boolean, api_name: :obsReviewed

        # @!attribute obs_valid
        #
        #   @return [Boolean, nil]
        optional :obs_valid, Phoebe::Internal::Type::Boolean, api_name: :obsValid

        # @!attribute sci_name
        #
        #   @return [String, nil]
        optional :sci_name, String, api_name: :sciName

        # @!attribute species_code
        #
        #   @return [String, nil]
        optional :species_code, String, api_name: :speciesCode

        # @!attribute sub_id
        #
        #   @return [String, nil]
        optional :sub_id, String, api_name: :subId

        # @!method initialize(id: nil, com_name: nil, firstname: nil, how_many: nil, lastname: nil, lat: nil, lng: nil, location_private: nil, loc_id: nil, loc_name: nil, obs_dt: nil, obs_reviewed: nil, obs_valid: nil, sci_name: nil, species_code: nil, sub_id: nil)
        #   @param id [Integer]
        #   @param com_name [String]
        #   @param firstname [String]
        #   @param how_many [Integer]
        #   @param lastname [String]
        #   @param lat [Float]
        #   @param lng [Float]
        #   @param location_private [Boolean]
        #   @param loc_id [String]
        #   @param loc_name [String]
        #   @param obs_dt [String]
        #   @param obs_reviewed [Boolean]
        #   @param obs_valid [Boolean]
        #   @param sci_name [String]
        #   @param species_code [String]
        #   @param sub_id [String]
      end
    end
  end
end
