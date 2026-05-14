# typed: strong

module Phoebe
  module Models
    module Data
      module Observations
        module Recent
          class NotableListParams < Phoebe::Internal::Type::BaseModel
            extend Phoebe::Internal::Type::RequestParameters::Converter
            include Phoebe::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Phoebe::Data::Observations::Recent::NotableListParams,
                  Phoebe::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :region_code

            # The number of days back to fetch observations.
            sig { returns(T.nilable(Integer)) }
            attr_reader :back

            sig { params(back: Integer).void }
            attr_writer :back

            # Include a subset (simple), or all (full), of the fields available.
            sig do
              returns(
                T.nilable(
                  Phoebe::Data::Observations::Recent::NotableListParams::Detail::OrSymbol
                )
              )
            end
            attr_reader :detail

            sig do
              params(
                detail:
                  Phoebe::Data::Observations::Recent::NotableListParams::Detail::OrSymbol
              ).void
            end
            attr_writer :detail

            # Only fetch observations from hotspots
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :hotspot

            sig { params(hotspot: T::Boolean).void }
            attr_writer :hotspot

            # Only fetch this number of observations
            sig { returns(T.nilable(Integer)) }
            attr_reader :max_results

            sig { params(max_results: Integer).void }
            attr_writer :max_results

            # Fetch observations from up to 10 locations
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :r

            sig { params(r: T::Array[String]).void }
            attr_writer :r

            # Use this language for species common names
            sig { returns(T.nilable(String)) }
            attr_reader :spp_locale

            sig { params(spp_locale: String).void }
            attr_writer :spp_locale

            sig do
              params(
                region_code: String,
                back: Integer,
                detail:
                  Phoebe::Data::Observations::Recent::NotableListParams::Detail::OrSymbol,
                hotspot: T::Boolean,
                max_results: Integer,
                r: T::Array[String],
                spp_locale: String,
                request_options: Phoebe::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              region_code:,
              # The number of days back to fetch observations.
              back: nil,
              # Include a subset (simple), or all (full), of the fields available.
              detail: nil,
              # Only fetch observations from hotspots
              hotspot: nil,
              # Only fetch this number of observations
              max_results: nil,
              # Fetch observations from up to 10 locations
              r: nil,
              # Use this language for species common names
              spp_locale: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  region_code: String,
                  back: Integer,
                  detail:
                    Phoebe::Data::Observations::Recent::NotableListParams::Detail::OrSymbol,
                  hotspot: T::Boolean,
                  max_results: Integer,
                  r: T::Array[String],
                  spp_locale: String,
                  request_options: Phoebe::RequestOptions
                }
              )
            end
            def to_hash
            end

            # Include a subset (simple), or all (full), of the fields available.
            module Detail
              extend Phoebe::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Phoebe::Data::Observations::Recent::NotableListParams::Detail
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SIMPLE =
                T.let(
                  :simple,
                  Phoebe::Data::Observations::Recent::NotableListParams::Detail::TaggedSymbol
                )
              FULL =
                T.let(
                  :full,
                  Phoebe::Data::Observations::Recent::NotableListParams::Detail::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Phoebe::Data::Observations::Recent::NotableListParams::Detail::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
