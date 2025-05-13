# typed: strong

module Phoebe
  module Models
    module Data
      module Observations
        class RecentListParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Phoebe::Data::Observations::RecentListParams,
                Phoebe::Internal::AnyHash
              )
            end

          # The number of days back to fetch observations.
          sig { returns(T.nilable(Integer)) }
          attr_reader :back

          sig { params(back: Integer).void }
          attr_writer :back

          # Only fetch observations from these taxonomic categories
          sig do
            returns(
              T.nilable(
                Phoebe::Data::Observations::RecentListParams::Cat::OrSymbol
              )
            )
          end
          attr_reader :cat

          sig do
            params(
              cat: Phoebe::Data::Observations::RecentListParams::Cat::OrSymbol
            ).void
          end
          attr_writer :cat

          # Only fetch observations from hotspots
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :hotspot

          sig { params(hotspot: T::Boolean).void }
          attr_writer :hotspot

          # Include observations which have not yet been reviewed
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :include_provisional

          sig { params(include_provisional: T::Boolean).void }
          attr_writer :include_provisional

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
              back: Integer,
              cat: Phoebe::Data::Observations::RecentListParams::Cat::OrSymbol,
              hotspot: T::Boolean,
              include_provisional: T::Boolean,
              max_results: Integer,
              r: T::Array[String],
              spp_locale: String,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The number of days back to fetch observations.
            back: nil,
            # Only fetch observations from these taxonomic categories
            cat: nil,
            # Only fetch observations from hotspots
            hotspot: nil,
            # Include observations which have not yet been reviewed
            include_provisional: nil,
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
                back: Integer,
                cat:
                  Phoebe::Data::Observations::RecentListParams::Cat::OrSymbol,
                hotspot: T::Boolean,
                include_provisional: T::Boolean,
                max_results: Integer,
                r: T::Array[String],
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
                T.all(Symbol, Phoebe::Data::Observations::RecentListParams::Cat)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SPECIES =
              T.let(
                :species,
                Phoebe::Data::Observations::RecentListParams::Cat::TaggedSymbol
              )
            SLASH =
              T.let(
                :slash,
                Phoebe::Data::Observations::RecentListParams::Cat::TaggedSymbol
              )
            ISSF =
              T.let(
                :issf,
                Phoebe::Data::Observations::RecentListParams::Cat::TaggedSymbol
              )
            SPUH =
              T.let(
                :spuh,
                Phoebe::Data::Observations::RecentListParams::Cat::TaggedSymbol
              )
            HYBRID =
              T.let(
                :hybrid,
                Phoebe::Data::Observations::RecentListParams::Cat::TaggedSymbol
              )
            DOMESTIC =
              T.let(
                :domestic,
                Phoebe::Data::Observations::RecentListParams::Cat::TaggedSymbol
              )
            FORM =
              T.let(
                :form,
                Phoebe::Data::Observations::RecentListParams::Cat::TaggedSymbol
              )
            INTERGRADE =
              T.let(
                :intergrade,
                Phoebe::Data::Observations::RecentListParams::Cat::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Phoebe::Data::Observations::RecentListParams::Cat::TaggedSymbol
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
