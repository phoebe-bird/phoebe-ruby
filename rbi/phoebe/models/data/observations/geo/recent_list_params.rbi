# typed: strong

module Phoebe
  module Models
    module Data
      module Observations
        module Geo
          class RecentListParams < Phoebe::Internal::Type::BaseModel
            extend Phoebe::Internal::Type::RequestParameters::Converter
            include Phoebe::Internal::Type::RequestParameters

            OrHash =
              T.type_alias { T.any(T.self_type, Phoebe::Internal::AnyHash) }

            sig { returns(Float) }
            attr_accessor :lat

            sig { returns(Float) }
            attr_accessor :lng

            # The number of days back to fetch observations.
            sig { returns(T.nilable(Integer)) }
            attr_reader :back

            sig { params(back: Integer).void }
            attr_writer :back

            # Only fetch observations from these taxonomic categories
            sig do
              returns(
                T.nilable(
                  Phoebe::Data::Observations::Geo::RecentListParams::Cat::OrSymbol
                )
              )
            end
            attr_reader :cat

            sig do
              params(
                cat:
                  Phoebe::Data::Observations::Geo::RecentListParams::Cat::OrSymbol
              ).void
            end
            attr_writer :cat

            # The search radius from the given position, in kilometers.
            sig { returns(T.nilable(Integer)) }
            attr_reader :dist

            sig { params(dist: Integer).void }
            attr_writer :dist

            # Only fetch observations from hotspots
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :hotspot

            sig { params(hotspot: T::Boolean).void }
            attr_writer :hotspot

            # Include observations which have not yet been reviewed.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :include_provisional

            sig { params(include_provisional: T::Boolean).void }
            attr_writer :include_provisional

            # Only fetch this number of observations
            sig { returns(T.nilable(Integer)) }
            attr_reader :max_results

            sig { params(max_results: Integer).void }
            attr_writer :max_results

            # Sort observations by taxonomy or by date, most recent first.
            sig do
              returns(
                T.nilable(
                  Phoebe::Data::Observations::Geo::RecentListParams::Sort::OrSymbol
                )
              )
            end
            attr_reader :sort

            sig do
              params(
                sort:
                  Phoebe::Data::Observations::Geo::RecentListParams::Sort::OrSymbol
              ).void
            end
            attr_writer :sort

            # Use this language for species common names
            sig { returns(T.nilable(String)) }
            attr_reader :spp_locale

            sig { params(spp_locale: String).void }
            attr_writer :spp_locale

            sig do
              params(
                lat: Float,
                lng: Float,
                back: Integer,
                cat:
                  Phoebe::Data::Observations::Geo::RecentListParams::Cat::OrSymbol,
                dist: Integer,
                hotspot: T::Boolean,
                include_provisional: T::Boolean,
                max_results: Integer,
                sort:
                  Phoebe::Data::Observations::Geo::RecentListParams::Sort::OrSymbol,
                spp_locale: String,
                request_options: Phoebe::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              lat:,
              lng:,
              # The number of days back to fetch observations.
              back: nil,
              # Only fetch observations from these taxonomic categories
              cat: nil,
              # The search radius from the given position, in kilometers.
              dist: nil,
              # Only fetch observations from hotspots
              hotspot: nil,
              # Include observations which have not yet been reviewed.
              include_provisional: nil,
              # Only fetch this number of observations
              max_results: nil,
              # Sort observations by taxonomy or by date, most recent first.
              sort: nil,
              # Use this language for species common names
              spp_locale: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  lat: Float,
                  lng: Float,
                  back: Integer,
                  cat:
                    Phoebe::Data::Observations::Geo::RecentListParams::Cat::OrSymbol,
                  dist: Integer,
                  hotspot: T::Boolean,
                  include_provisional: T::Boolean,
                  max_results: Integer,
                  sort:
                    Phoebe::Data::Observations::Geo::RecentListParams::Sort::OrSymbol,
                  spp_locale: String,
                  request_options: Phoebe::RequestOptions
                }
              )
            end
            def to_hash
            end

            # Only fetch observations from these taxonomic categories
            module Cat
              extend Phoebe::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Phoebe::Data::Observations::Geo::RecentListParams::Cat
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SPECIES =
                T.let(
                  :species,
                  Phoebe::Data::Observations::Geo::RecentListParams::Cat::TaggedSymbol
                )
              SLASH =
                T.let(
                  :slash,
                  Phoebe::Data::Observations::Geo::RecentListParams::Cat::TaggedSymbol
                )
              ISSF =
                T.let(
                  :issf,
                  Phoebe::Data::Observations::Geo::RecentListParams::Cat::TaggedSymbol
                )
              SPUH =
                T.let(
                  :spuh,
                  Phoebe::Data::Observations::Geo::RecentListParams::Cat::TaggedSymbol
                )
              HYBRID =
                T.let(
                  :hybrid,
                  Phoebe::Data::Observations::Geo::RecentListParams::Cat::TaggedSymbol
                )
              DOMESTIC =
                T.let(
                  :domestic,
                  Phoebe::Data::Observations::Geo::RecentListParams::Cat::TaggedSymbol
                )
              FORM =
                T.let(
                  :form,
                  Phoebe::Data::Observations::Geo::RecentListParams::Cat::TaggedSymbol
                )
              INTERGRADE =
                T.let(
                  :intergrade,
                  Phoebe::Data::Observations::Geo::RecentListParams::Cat::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Phoebe::Data::Observations::Geo::RecentListParams::Cat::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Sort observations by taxonomy or by date, most recent first.
            module Sort
              extend Phoebe::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Phoebe::Data::Observations::Geo::RecentListParams::Sort
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DATE =
                T.let(
                  :date,
                  Phoebe::Data::Observations::Geo::RecentListParams::Sort::TaggedSymbol
                )
              SPECIES =
                T.let(
                  :species,
                  Phoebe::Data::Observations::Geo::RecentListParams::Sort::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Phoebe::Data::Observations::Geo::RecentListParams::Sort::TaggedSymbol
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
