# typed: strong

module Phoebe
  module Models
    module Product
      module Lists
        class HistoricalRetrieveResponseItem < Phoebe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem,
                Phoebe::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :all_obs_reported

          sig { params(all_obs_reported: T::Boolean).void }
          attr_writer :all_obs_reported

          sig { returns(T.nilable(String)) }
          attr_reader :checklist_id

          sig { params(checklist_id: String).void }
          attr_writer :checklist_id

          sig { returns(T.nilable(String)) }
          attr_reader :creation_dt

          sig { params(creation_dt: String).void }
          attr_writer :creation_dt

          sig { returns(T.nilable(Float)) }
          attr_reader :duration_hrs

          sig { params(duration_hrs: Float).void }
          attr_writer :duration_hrs

          sig { returns(T.nilable(String)) }
          attr_reader :iso_obs_date

          sig { params(iso_obs_date: String).void }
          attr_writer :iso_obs_date

          sig { returns(T.nilable(String)) }
          attr_reader :last_edited_dt

          sig { params(last_edited_dt: String).void }
          attr_writer :last_edited_dt

          sig do
            returns(
              T.nilable(
                Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem::Loc
              )
            )
          end
          attr_reader :loc

          sig do
            params(
              loc:
                Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem::Loc::OrHash
            ).void
          end
          attr_writer :loc

          sig { returns(T.nilable(String)) }
          attr_reader :loc_id

          sig { params(loc_id: String).void }
          attr_writer :loc_id

          sig { returns(T.nilable(Integer)) }
          attr_reader :num_observers

          sig { params(num_observers: Integer).void }
          attr_writer :num_observers

          sig { returns(T.nilable(Integer)) }
          attr_reader :num_species

          sig { params(num_species: Integer).void }
          attr_writer :num_species

          sig do
            returns(
              T.nilable(
                T::Array[
                  Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem::Ob
                ]
              )
            )
          end
          attr_reader :obs

          sig do
            params(
              obs:
                T::Array[
                  Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem::Ob::OrHash
                ]
            ).void
          end
          attr_writer :obs

          sig { returns(T.nilable(String)) }
          attr_reader :obs_dt

          sig { params(obs_dt: String).void }
          attr_writer :obs_dt

          sig { returns(T.nilable(String)) }
          attr_reader :obs_time

          sig { params(obs_time: String).void }
          attr_writer :obs_time

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :obs_time_valid

          sig { params(obs_time_valid: T::Boolean).void }
          attr_writer :obs_time_valid

          sig { returns(T.nilable(String)) }
          attr_reader :proj_id

          sig { params(proj_id: String).void }
          attr_writer :proj_id

          sig { returns(T.nilable(String)) }
          attr_reader :protocol_id

          sig { params(protocol_id: String).void }
          attr_writer :protocol_id

          sig { returns(T.nilable(String)) }
          attr_reader :sub_id

          sig { params(sub_id: String).void }
          attr_writer :sub_id

          sig { returns(T.nilable(String)) }
          attr_reader :submission_method_code

          sig { params(submission_method_code: String).void }
          attr_writer :submission_method_code

          sig { returns(T.nilable(String)) }
          attr_reader :subnational1_code

          sig { params(subnational1_code: String).void }
          attr_writer :subnational1_code

          sig { returns(T.nilable(String)) }
          attr_reader :user_display_name

          sig { params(user_display_name: String).void }
          attr_writer :user_display_name

          sig do
            params(
              all_obs_reported: T::Boolean,
              checklist_id: String,
              creation_dt: String,
              duration_hrs: Float,
              iso_obs_date: String,
              last_edited_dt: String,
              loc:
                Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem::Loc::OrHash,
              loc_id: String,
              num_observers: Integer,
              num_species: Integer,
              obs:
                T::Array[
                  Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem::Ob::OrHash
                ],
              obs_dt: String,
              obs_time: String,
              obs_time_valid: T::Boolean,
              proj_id: String,
              protocol_id: String,
              sub_id: String,
              submission_method_code: String,
              subnational1_code: String,
              user_display_name: String
            ).returns(T.attached_class)
          end
          def self.new(
            all_obs_reported: nil,
            checklist_id: nil,
            creation_dt: nil,
            duration_hrs: nil,
            iso_obs_date: nil,
            last_edited_dt: nil,
            loc: nil,
            loc_id: nil,
            num_observers: nil,
            num_species: nil,
            obs: nil,
            obs_dt: nil,
            obs_time: nil,
            obs_time_valid: nil,
            proj_id: nil,
            protocol_id: nil,
            sub_id: nil,
            submission_method_code: nil,
            subnational1_code: nil,
            user_display_name: nil
          )
          end

          sig do
            override.returns(
              {
                all_obs_reported: T::Boolean,
                checklist_id: String,
                creation_dt: String,
                duration_hrs: Float,
                iso_obs_date: String,
                last_edited_dt: String,
                loc:
                  Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem::Loc,
                loc_id: String,
                num_observers: Integer,
                num_species: Integer,
                obs:
                  T::Array[
                    Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem::Ob
                  ],
                obs_dt: String,
                obs_time: String,
                obs_time_valid: T::Boolean,
                proj_id: String,
                protocol_id: String,
                sub_id: String,
                submission_method_code: String,
                subnational1_code: String,
                user_display_name: String
              }
            )
          end
          def to_hash
          end

          class Loc < Phoebe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem::Loc,
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

          class Ob < Phoebe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem::Ob,
                  Phoebe::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem::Ob::ObsAux
                  ]
                )
              )
            end
            attr_reader :obs_aux

            sig do
              params(
                obs_aux:
                  T::Array[
                    Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem::Ob::ObsAux::OrHash
                  ]
              ).void
            end
            attr_writer :obs_aux

            sig { returns(T.nilable(String)) }
            attr_reader :obs_dt

            sig { params(obs_dt: String).void }
            attr_writer :obs_dt

            sig { returns(T.nilable(String)) }
            attr_reader :obs_id

            sig { params(obs_id: String).void }
            attr_writer :obs_id

            sig { returns(T.nilable(String)) }
            attr_reader :species_code

            sig { params(species_code: String).void }
            attr_writer :species_code

            sig do
              params(
                obs_aux:
                  T::Array[
                    Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem::Ob::ObsAux::OrHash
                  ],
                obs_dt: String,
                obs_id: String,
                species_code: String
              ).returns(T.attached_class)
            end
            def self.new(
              obs_aux: nil,
              obs_dt: nil,
              obs_id: nil,
              species_code: nil
            )
            end

            sig do
              override.returns(
                {
                  obs_aux:
                    T::Array[
                      Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem::Ob::ObsAux
                    ],
                  obs_dt: String,
                  obs_id: String,
                  species_code: String
                }
              )
            end
            def to_hash
            end

            class ObsAux < Phoebe::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem::Ob::ObsAux,
                    Phoebe::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :aux_code

              sig { params(aux_code: String).void }
              attr_writer :aux_code

              sig { returns(T.nilable(String)) }
              attr_reader :entry_method_code

              sig { params(entry_method_code: String).void }
              attr_writer :entry_method_code

              sig { returns(T.nilable(String)) }
              attr_reader :field_name

              sig { params(field_name: String).void }
              attr_writer :field_name

              sig { returns(T.nilable(String)) }
              attr_reader :obs_id

              sig { params(obs_id: String).void }
              attr_writer :obs_id

              sig { returns(T.nilable(String)) }
              attr_reader :species_code

              sig { params(species_code: String).void }
              attr_writer :species_code

              sig { returns(T.nilable(String)) }
              attr_reader :sub_id

              sig { params(sub_id: String).void }
              attr_writer :sub_id

              sig { returns(T.nilable(String)) }
              attr_reader :value

              sig { params(value: String).void }
              attr_writer :value

              sig do
                params(
                  aux_code: String,
                  entry_method_code: String,
                  field_name: String,
                  obs_id: String,
                  species_code: String,
                  sub_id: String,
                  value: String
                ).returns(T.attached_class)
              end
              def self.new(
                aux_code: nil,
                entry_method_code: nil,
                field_name: nil,
                obs_id: nil,
                species_code: nil,
                sub_id: nil,
                value: nil
              )
              end

              sig do
                override.returns(
                  {
                    aux_code: String,
                    entry_method_code: String,
                    field_name: String,
                    obs_id: String,
                    species_code: String,
                    sub_id: String,
                    value: String
                  }
                )
              end
              def to_hash
              end
            end
          end
        end

        HistoricalRetrieveResponse =
          T.let(
            Phoebe::Internal::Type::ArrayOf[
              Phoebe::Models::Product::Lists::HistoricalRetrieveResponseItem
            ],
            Phoebe::Internal::Type::Converter
          )
      end
    end
  end
end
