# frozen_string_literal: true

module Phoebe
  module Models
    module Ref
      class HotspotListResponseItem < Phoebe::Internal::Type::BaseModel
        # @!attribute country_code
        #
        #   @return [String, nil]
        optional :country_code, String, api_name: :countryCode

        # @!attribute lat
        #
        #   @return [Float, nil]
        optional :lat, Float

        # @!attribute latest_obs_dt
        #
        #   @return [String, nil]
        optional :latest_obs_dt, String, api_name: :latestObsDt

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

        # @!attribute num_species_all_time
        #
        #   @return [Integer, nil]
        optional :num_species_all_time, Integer, api_name: :numSpeciesAllTime

        # @!attribute subnational1_code
        #
        #   @return [String, nil]
        optional :subnational1_code, String, api_name: :subnational1Code

        # @!attribute subnational2_code
        #
        #   @return [String, nil]
        optional :subnational2_code, String, api_name: :subnational2Code

        # @!method initialize(country_code: nil, lat: nil, latest_obs_dt: nil, lng: nil, loc_id: nil, loc_name: nil, num_species_all_time: nil, subnational1_code: nil, subnational2_code: nil)
        #   @param country_code [String]
        #   @param lat [Float]
        #   @param latest_obs_dt [String]
        #   @param lng [Float]
        #   @param loc_id [String]
        #   @param loc_name [String]
        #   @param num_species_all_time [Integer]
        #   @param subnational1_code [String]
        #   @param subnational2_code [String]
      end

      # @type [Phoebe::Internal::Type::Converter]
      HotspotListResponse =
        Phoebe::Internal::Type::ArrayOf[-> { Phoebe::Models::Ref::HotspotListResponseItem }]
    end
  end
end
