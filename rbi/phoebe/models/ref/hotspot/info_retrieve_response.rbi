# typed: strong

module Phoebe
  module Models
    module Ref
      module Hotspot
        class InfoRetrieveResponse < Phoebe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Phoebe::Models::Ref::Hotspot::InfoRetrieveResponse,
                Phoebe::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :country_code

          sig { params(country_code: String).void }
          attr_writer :country_code

          sig { returns(T.nilable(String)) }
          attr_reader :country_name

          sig { params(country_name: String).void }
          attr_writer :country_name

          sig { returns(T.nilable(String)) }
          attr_reader :hierarchical_name

          sig { params(hierarchical_name: String).void }
          attr_writer :hierarchical_name

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_hotspot

          sig { params(is_hotspot: T::Boolean).void }
          attr_writer :is_hotspot

          sig { returns(T.nilable(Float)) }
          attr_reader :lat

          sig { params(lat: Float).void }
          attr_writer :lat

          sig { returns(T.nilable(Float)) }
          attr_reader :latitude

          sig { params(latitude: Float).void }
          attr_writer :latitude

          sig { returns(T.nilable(Float)) }
          attr_reader :lng

          sig { params(lng: Float).void }
          attr_writer :lng

          sig { returns(T.nilable(String)) }
          attr_reader :loc_id

          sig { params(loc_id: String).void }
          attr_writer :loc_id

          sig { returns(T.nilable(String)) }
          attr_reader :loc_name

          sig { params(loc_name: String).void }
          attr_writer :loc_name

          sig { returns(T.nilable(Float)) }
          attr_reader :longitude

          sig { params(longitude: Float).void }
          attr_writer :longitude

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(String)) }
          attr_reader :subnational1_code

          sig { params(subnational1_code: String).void }
          attr_writer :subnational1_code

          sig { returns(T.nilable(String)) }
          attr_reader :subnational1_name

          sig { params(subnational1_name: String).void }
          attr_writer :subnational1_name

          sig do
            params(
              country_code: String,
              country_name: String,
              hierarchical_name: String,
              is_hotspot: T::Boolean,
              lat: Float,
              latitude: Float,
              lng: Float,
              loc_id: String,
              loc_name: String,
              longitude: Float,
              name: String,
              subnational1_code: String,
              subnational1_name: String
            ).returns(T.attached_class)
          end
          def self.new(
            country_code: nil,
            country_name: nil,
            hierarchical_name: nil,
            is_hotspot: nil,
            lat: nil,
            latitude: nil,
            lng: nil,
            loc_id: nil,
            loc_name: nil,
            longitude: nil,
            name: nil,
            subnational1_code: nil,
            subnational1_name: nil
          )
          end

          sig do
            override.returns(
              {
                country_code: String,
                country_name: String,
                hierarchical_name: String,
                is_hotspot: T::Boolean,
                lat: Float,
                latitude: Float,
                lng: Float,
                loc_id: String,
                loc_name: String,
                longitude: Float,
                name: String,
                subnational1_code: String,
                subnational1_name: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
