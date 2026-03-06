# typed: strong

module Phoebe
  module Models
    module Data
      module Observations
        module Recent
          class HistoricListParams < Phoebe::Internal::Type::BaseModel
            extend Phoebe::Internal::Type::RequestParameters::Converter
            include Phoebe::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Phoebe::Data::Observations::Recent::HistoricListParams,
                  Phoebe::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :region_code

            sig { returns(Integer) }
            attr_accessor :y_

            sig { returns(Integer) }
            attr_accessor :m

            sig { returns(Integer) }
            attr_accessor :d

            # Only fetch observations from these taxonomic categories
            sig do
              returns(
                T.nilable(
                  Phoebe::Data::Observations::Recent::HistoricListParams::Cat::OrSymbol
                )
              )
            end
            attr_reader :cat

            sig do
              params(
                cat:
                  Phoebe::Data::Observations::Recent::HistoricListParams::Cat::OrSymbol
              ).void
            end
            attr_writer :cat

            # Include a subset (simple), or all (full), of the fields available.
            sig do
              returns(
                T.nilable(
                  Phoebe::Data::Observations::Recent::HistoricListParams::Detail::OrSymbol
                )
              )
            end
            attr_reader :detail

            sig do
              params(
                detail:
                  Phoebe::Data::Observations::Recent::HistoricListParams::Detail::OrSymbol
              ).void
            end
            attr_writer :detail

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

            # Fetch observations from up to 50 locations
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :r

            sig { params(r: T::Array[String]).void }
            attr_writer :r

            # Include latest observation of the day, or the first added
            sig do
              returns(
                T.nilable(
                  Phoebe::Data::Observations::Recent::HistoricListParams::Rank::OrSymbol
                )
              )
            end
            attr_reader :rank

            sig do
              params(
                rank:
                  Phoebe::Data::Observations::Recent::HistoricListParams::Rank::OrSymbol
              ).void
            end
            attr_writer :rank

            # Use this language for species common names
            sig { returns(T.nilable(String)) }
            attr_reader :spp_locale

            sig { params(spp_locale: String).void }
            attr_writer :spp_locale

            sig do
              params(
                region_code: String,
                y_: Integer,
                m: Integer,
                d: Integer,
                cat:
                  Phoebe::Data::Observations::Recent::HistoricListParams::Cat::OrSymbol,
                detail:
                  Phoebe::Data::Observations::Recent::HistoricListParams::Detail::OrSymbol,
                hotspot: T::Boolean,
                include_provisional: T::Boolean,
                max_results: Integer,
                r: T::Array[String],
                rank:
                  Phoebe::Data::Observations::Recent::HistoricListParams::Rank::OrSymbol,
                spp_locale: String,
                request_options: Phoebe::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              region_code:,
              y_:,
              m:,
              d:,
              # Only fetch observations from these taxonomic categories
              cat: nil,
              # Include a subset (simple), or all (full), of the fields available.
              detail: nil,
              # Only fetch observations from hotspots
              hotspot: nil,
              # Include observations which have not yet been reviewed.
              include_provisional: nil,
              # Only fetch this number of observations
              max_results: nil,
              # Fetch observations from up to 50 locations
              r: nil,
              # Include latest observation of the day, or the first added
              rank: nil,
              # Use this language for species common names
              spp_locale: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  region_code: String,
                  y_: Integer,
                  m: Integer,
                  d: Integer,
                  cat:
                    Phoebe::Data::Observations::Recent::HistoricListParams::Cat::OrSymbol,
                  detail:
                    Phoebe::Data::Observations::Recent::HistoricListParams::Detail::OrSymbol,
                  hotspot: T::Boolean,
                  include_provisional: T::Boolean,
                  max_results: Integer,
                  r: T::Array[String],
                  rank:
                    Phoebe::Data::Observations::Recent::HistoricListParams::Rank::OrSymbol,
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
                    Phoebe::Data::Observations::Recent::HistoricListParams::Cat
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SPECIES =
                T.let(
                  :species,
                  Phoebe::Data::Observations::Recent::HistoricListParams::Cat::TaggedSymbol
                )
              SLASH =
                T.let(
                  :slash,
                  Phoebe::Data::Observations::Recent::HistoricListParams::Cat::TaggedSymbol
                )
              ISSF =
                T.let(
                  :issf,
                  Phoebe::Data::Observations::Recent::HistoricListParams::Cat::TaggedSymbol
                )
              SPUH =
                T.let(
                  :spuh,
                  Phoebe::Data::Observations::Recent::HistoricListParams::Cat::TaggedSymbol
                )
              HYBRID =
                T.let(
                  :hybrid,
                  Phoebe::Data::Observations::Recent::HistoricListParams::Cat::TaggedSymbol
                )
              DOMESTIC =
                T.let(
                  :domestic,
                  Phoebe::Data::Observations::Recent::HistoricListParams::Cat::TaggedSymbol
                )
              FORM =
                T.let(
                  :form,
                  Phoebe::Data::Observations::Recent::HistoricListParams::Cat::TaggedSymbol
                )
              INTERGRADE =
                T.let(
                  :intergrade,
                  Phoebe::Data::Observations::Recent::HistoricListParams::Cat::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Phoebe::Data::Observations::Recent::HistoricListParams::Cat::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Include a subset (simple), or all (full), of the fields available.
            module Detail
              extend Phoebe::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Phoebe::Data::Observations::Recent::HistoricListParams::Detail
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SIMPLE =
                T.let(
                  :simple,
                  Phoebe::Data::Observations::Recent::HistoricListParams::Detail::TaggedSymbol
                )
              FULL =
                T.let(
                  :full,
                  Phoebe::Data::Observations::Recent::HistoricListParams::Detail::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Phoebe::Data::Observations::Recent::HistoricListParams::Detail::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Include latest observation of the day, or the first added
            module Rank
              extend Phoebe::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Phoebe::Data::Observations::Recent::HistoricListParams::Rank
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MREC =
                T.let(
                  :mrec,
                  Phoebe::Data::Observations::Recent::HistoricListParams::Rank::TaggedSymbol
                )
              CREATE =
                T.let(
                  :create,
                  Phoebe::Data::Observations::Recent::HistoricListParams::Rank::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Phoebe::Data::Observations::Recent::HistoricListParams::Rank::TaggedSymbol
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
