# typed: strong

module Phoebe
  module Models
    module Data
      class Observation < Phoebe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Phoebe::Data::Observation, Phoebe::Internal::AnyHash)
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :com_name

        sig { params(com_name: String).void }
        attr_writer :com_name

        sig { returns(T.nilable(String)) }
        attr_reader :firstname

        sig { params(firstname: String).void }
        attr_writer :firstname

        sig { returns(T.nilable(Integer)) }
        attr_reader :how_many

        sig { params(how_many: Integer).void }
        attr_writer :how_many

        sig { returns(T.nilable(String)) }
        attr_reader :lastname

        sig { params(lastname: String).void }
        attr_writer :lastname

        sig { returns(T.nilable(Float)) }
        attr_reader :lat

        sig { params(lat: Float).void }
        attr_writer :lat

        sig { returns(T.nilable(Float)) }
        attr_reader :lng

        sig { params(lng: Float).void }
        attr_writer :lng

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :location_private

        sig { params(location_private: T::Boolean).void }
        attr_writer :location_private

        sig { returns(T.nilable(String)) }
        attr_reader :loc_id

        sig { params(loc_id: String).void }
        attr_writer :loc_id

        sig { returns(T.nilable(String)) }
        attr_reader :loc_name

        sig { params(loc_name: String).void }
        attr_writer :loc_name

        sig { returns(T.nilable(String)) }
        attr_reader :obs_dt

        sig { params(obs_dt: String).void }
        attr_writer :obs_dt

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :obs_reviewed

        sig { params(obs_reviewed: T::Boolean).void }
        attr_writer :obs_reviewed

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :obs_valid

        sig { params(obs_valid: T::Boolean).void }
        attr_writer :obs_valid

        sig { returns(T.nilable(String)) }
        attr_reader :sci_name

        sig { params(sci_name: String).void }
        attr_writer :sci_name

        sig { returns(T.nilable(String)) }
        attr_reader :species_code

        sig { params(species_code: String).void }
        attr_writer :species_code

        sig { returns(T.nilable(String)) }
        attr_reader :sub_id

        sig { params(sub_id: String).void }
        attr_writer :sub_id

        sig do
          params(
            id: Integer,
            com_name: String,
            firstname: String,
            how_many: Integer,
            lastname: String,
            lat: Float,
            lng: Float,
            location_private: T::Boolean,
            loc_id: String,
            loc_name: String,
            obs_dt: String,
            obs_reviewed: T::Boolean,
            obs_valid: T::Boolean,
            sci_name: String,
            species_code: String,
            sub_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          com_name: nil,
          firstname: nil,
          how_many: nil,
          lastname: nil,
          lat: nil,
          lng: nil,
          location_private: nil,
          loc_id: nil,
          loc_name: nil,
          obs_dt: nil,
          obs_reviewed: nil,
          obs_valid: nil,
          sci_name: nil,
          species_code: nil,
          sub_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              com_name: String,
              firstname: String,
              how_many: Integer,
              lastname: String,
              lat: Float,
              lng: Float,
              location_private: T::Boolean,
              loc_id: String,
              loc_name: String,
              obs_dt: String,
              obs_reviewed: T::Boolean,
              obs_valid: T::Boolean,
              sci_name: String,
              species_code: String,
              sub_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
