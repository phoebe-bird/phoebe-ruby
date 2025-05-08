# frozen_string_literal: true

module Phoebe
  module Models
    module Product
      # @see Phoebe::Resources::Product::Checklist#view
      class ChecklistViewResponse < Phoebe::Internal::Type::BaseModel
        # @!attribute all_obs_reported
        #
        #   @return [Boolean, nil]
        optional :all_obs_reported, Phoebe::Internal::Type::Boolean, api_name: :allObsReported

        # @!attribute checklist_id
        #
        #   @return [String, nil]
        optional :checklist_id, String, api_name: :checklistId

        # @!attribute creation_dt
        #
        #   @return [String, nil]
        optional :creation_dt, String, api_name: :creationDt

        # @!attribute duration_hrs
        #
        #   @return [Float, nil]
        optional :duration_hrs, Float, api_name: :durationHrs

        # @!attribute iso_obs_date
        #
        #   @return [String, nil]
        optional :iso_obs_date, String, api_name: :isoObsDate

        # @!attribute last_edited_dt
        #
        #   @return [String, nil]
        optional :last_edited_dt, String, api_name: :lastEditedDt

        # @!attribute loc
        #
        #   @return [Phoebe::Models::Product::ChecklistViewResponse::Loc, nil]
        optional :loc, -> { Phoebe::Models::Product::ChecklistViewResponse::Loc }

        # @!attribute loc_id
        #
        #   @return [String, nil]
        optional :loc_id, String, api_name: :locId

        # @!attribute num_observers
        #
        #   @return [Integer, nil]
        optional :num_observers, Integer, api_name: :numObservers

        # @!attribute num_species
        #
        #   @return [Integer, nil]
        optional :num_species, Integer, api_name: :numSpecies

        # @!attribute obs
        #
        #   @return [Array<Phoebe::Models::Product::ChecklistViewResponse::Ob>, nil]
        optional :obs, -> { Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Product::ChecklistViewResponse::Ob] }

        # @!attribute obs_dt
        #
        #   @return [String, nil]
        optional :obs_dt, String, api_name: :obsDt

        # @!attribute obs_time
        #
        #   @return [String, nil]
        optional :obs_time, String, api_name: :obsTime

        # @!attribute obs_time_valid
        #
        #   @return [Boolean, nil]
        optional :obs_time_valid, Phoebe::Internal::Type::Boolean, api_name: :obsTimeValid

        # @!attribute proj_id
        #
        #   @return [String, nil]
        optional :proj_id, String, api_name: :projId

        # @!attribute protocol_id
        #
        #   @return [String, nil]
        optional :protocol_id, String, api_name: :protocolId

        # @!attribute sub_id
        #
        #   @return [String, nil]
        optional :sub_id, String, api_name: :subId

        # @!attribute submission_method_code
        #
        #   @return [String, nil]
        optional :submission_method_code, String, api_name: :submissionMethodCode

        # @!attribute subnational1_code
        #
        #   @return [String, nil]
        optional :subnational1_code, String, api_name: :subnational1Code

        # @!attribute user_display_name
        #
        #   @return [String, nil]
        optional :user_display_name, String, api_name: :userDisplayName

        # @!method initialize(all_obs_reported: nil, checklist_id: nil, creation_dt: nil, duration_hrs: nil, iso_obs_date: nil, last_edited_dt: nil, loc: nil, loc_id: nil, num_observers: nil, num_species: nil, obs: nil, obs_dt: nil, obs_time: nil, obs_time_valid: nil, proj_id: nil, protocol_id: nil, sub_id: nil, submission_method_code: nil, subnational1_code: nil, user_display_name: nil)
        #   @param all_obs_reported [Boolean]
        #   @param checklist_id [String]
        #   @param creation_dt [String]
        #   @param duration_hrs [Float]
        #   @param iso_obs_date [String]
        #   @param last_edited_dt [String]
        #   @param loc [Phoebe::Models::Product::ChecklistViewResponse::Loc]
        #   @param loc_id [String]
        #   @param num_observers [Integer]
        #   @param num_species [Integer]
        #   @param obs [Array<Phoebe::Models::Product::ChecklistViewResponse::Ob>]
        #   @param obs_dt [String]
        #   @param obs_time [String]
        #   @param obs_time_valid [Boolean]
        #   @param proj_id [String]
        #   @param protocol_id [String]
        #   @param sub_id [String]
        #   @param submission_method_code [String]
        #   @param subnational1_code [String]
        #   @param user_display_name [String]

        # @see Phoebe::Models::Product::ChecklistViewResponse#loc
        class Loc < Phoebe::Internal::Type::BaseModel
          # @!attribute country_code
          #
          #   @return [String, nil]
          optional :country_code, String, api_name: :countryCode

          # @!attribute country_name
          #
          #   @return [String, nil]
          optional :country_name, String, api_name: :countryName

          # @!attribute hierarchical_name
          #
          #   @return [String, nil]
          optional :hierarchical_name, String, api_name: :hierarchicalName

          # @!attribute is_hotspot
          #
          #   @return [Boolean, nil]
          optional :is_hotspot, Phoebe::Internal::Type::Boolean, api_name: :isHotspot

          # @!attribute lat
          #
          #   @return [Float, nil]
          optional :lat, Float

          # @!attribute latitude
          #
          #   @return [Float, nil]
          optional :latitude, Float

          # @!attribute lng
          #
          #   @return [Float, nil]
          optional :lng, Float

          # @!attribute loc_id
          #
          #   @return [String, nil]
          optional :loc_id, String, api_name: :locId

          # @!attribute loc_name
          #
          #   @return [String, nil]
          optional :loc_name, String, api_name: :locName

          # @!attribute longitude
          #
          #   @return [Float, nil]
          optional :longitude, Float

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute subnational1_code
          #
          #   @return [String, nil]
          optional :subnational1_code, String, api_name: :subnational1Code

          # @!attribute subnational1_name
          #
          #   @return [String, nil]
          optional :subnational1_name, String, api_name: :subnational1Name

          # @!method initialize(country_code: nil, country_name: nil, hierarchical_name: nil, is_hotspot: nil, lat: nil, latitude: nil, lng: nil, loc_id: nil, loc_name: nil, longitude: nil, name: nil, subnational1_code: nil, subnational1_name: nil)
          #   @param country_code [String]
          #   @param country_name [String]
          #   @param hierarchical_name [String]
          #   @param is_hotspot [Boolean]
          #   @param lat [Float]
          #   @param latitude [Float]
          #   @param lng [Float]
          #   @param loc_id [String]
          #   @param loc_name [String]
          #   @param longitude [Float]
          #   @param name [String]
          #   @param subnational1_code [String]
          #   @param subnational1_name [String]
        end

        class Ob < Phoebe::Internal::Type::BaseModel
          # @!attribute obs_aux
          #
          #   @return [Array<Phoebe::Models::Product::ChecklistViewResponse::Ob::ObsAux>, nil]
          optional :obs_aux,
                   -> { Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Product::ChecklistViewResponse::Ob::ObsAux] },
                   api_name: :obsAux

          # @!attribute obs_dt
          #
          #   @return [String, nil]
          optional :obs_dt, String, api_name: :obsDt

          # @!attribute obs_id
          #
          #   @return [String, nil]
          optional :obs_id, String, api_name: :obsId

          # @!attribute species_code
          #
          #   @return [String, nil]
          optional :species_code, String, api_name: :speciesCode

          # @!method initialize(obs_aux: nil, obs_dt: nil, obs_id: nil, species_code: nil)
          #   @param obs_aux [Array<Phoebe::Models::Product::ChecklistViewResponse::Ob::ObsAux>]
          #   @param obs_dt [String]
          #   @param obs_id [String]
          #   @param species_code [String]

          class ObsAux < Phoebe::Internal::Type::BaseModel
            # @!attribute aux_code
            #
            #   @return [String, nil]
            optional :aux_code, String, api_name: :auxCode

            # @!attribute entry_method_code
            #
            #   @return [String, nil]
            optional :entry_method_code, String, api_name: :entryMethodCode

            # @!attribute field_name
            #
            #   @return [String, nil]
            optional :field_name, String, api_name: :fieldName

            # @!attribute obs_id
            #
            #   @return [String, nil]
            optional :obs_id, String, api_name: :obsId

            # @!attribute species_code
            #
            #   @return [String, nil]
            optional :species_code, String, api_name: :speciesCode

            # @!attribute sub_id
            #
            #   @return [String, nil]
            optional :sub_id, String, api_name: :subId

            # @!attribute value
            #
            #   @return [String, nil]
            optional :value, String

            # @!method initialize(aux_code: nil, entry_method_code: nil, field_name: nil, obs_id: nil, species_code: nil, sub_id: nil, value: nil)
            #   @param aux_code [String]
            #   @param entry_method_code [String]
            #   @param field_name [String]
            #   @param obs_id [String]
            #   @param species_code [String]
            #   @param sub_id [String]
            #   @param value [String]
          end
        end
      end
    end
  end
end
