# frozen_string_literal: true

module Phoebe
  module Models
    module Ref
      module Hotspot
        # @see Phoebe::Resources::Ref::Hotspot::Info#retrieve
        class InfoRetrieveResponse < Phoebe::Internal::Type::BaseModel
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
      end
    end
  end
end
