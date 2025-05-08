# typed: strong

module Phoebe
  module Models
    module Ref
      class HotspotListResponseItem < Phoebe::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(T.self_type, Phoebe::Internal::AnyHash) }

        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        sig { returns(T.nilable(Float)) }
        attr_reader :lat

        sig { params(lat: Float).void }
        attr_writer :lat

        sig { returns(T.nilable(String)) }
        attr_reader :latest_obs_dt

        sig { params(latest_obs_dt: String).void }
        attr_writer :latest_obs_dt

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

        sig { returns(T.nilable(Integer)) }
        attr_reader :num_species_all_time

        sig { params(num_species_all_time: Integer).void }
        attr_writer :num_species_all_time

        sig { returns(T.nilable(String)) }
        attr_reader :subnational1_code

        sig { params(subnational1_code: String).void }
        attr_writer :subnational1_code

        sig { returns(T.nilable(String)) }
        attr_reader :subnational2_code

        sig { params(subnational2_code: String).void }
        attr_writer :subnational2_code

        sig do
          params(
            country_code: String,
            lat: Float,
            latest_obs_dt: String,
            lng: Float,
            loc_id: String,
            loc_name: String,
            num_species_all_time: Integer,
            subnational1_code: String,
            subnational2_code: String
          ).returns(T.attached_class)
        end
        def self.new(
          country_code: nil,
          lat: nil,
          latest_obs_dt: nil,
          lng: nil,
          loc_id: nil,
          loc_name: nil,
          num_species_all_time: nil,
          subnational1_code: nil,
          subnational2_code: nil
        )
        end

        sig do
          override.returns(
            {
              country_code: String,
              lat: Float,
              latest_obs_dt: String,
              lng: Float,
              loc_id: String,
              loc_name: String,
              num_species_all_time: Integer,
              subnational1_code: String,
              subnational2_code: String
            }
          )
        end
        def to_hash
        end
      end

      HotspotListResponse =
        T.let(
          Phoebe::Internal::Type::ArrayOf[
            Phoebe::Models::Ref::HotspotListResponseItem
          ],
          Phoebe::Internal::Type::Converter
        )
    end
  end
end
