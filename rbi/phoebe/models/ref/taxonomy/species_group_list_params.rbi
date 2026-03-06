# typed: strong

module Phoebe
  module Models
    module Ref
      module Taxonomy
        class SpeciesGroupListParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Phoebe::Ref::Taxonomy::SpeciesGroupListParams,
                Phoebe::Internal::AnyHash
              )
            end

          # The order in which groups are returned.
          sig do
            returns(
              Phoebe::Ref::Taxonomy::SpeciesGroupListParams::SpeciesGrouping::OrSymbol
            )
          end
          attr_accessor :species_grouping

          # Locale for species group names. English names are returned for any non-listed
          # locale or any non-translated group name.
          sig { returns(T.nilable(String)) }
          attr_reader :group_name_locale

          sig { params(group_name_locale: String).void }
          attr_writer :group_name_locale

          sig do
            params(
              species_grouping:
                Phoebe::Ref::Taxonomy::SpeciesGroupListParams::SpeciesGrouping::OrSymbol,
              group_name_locale: String,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The order in which groups are returned.
            species_grouping:,
            # Locale for species group names. English names are returned for any non-listed
            # locale or any non-translated group name.
            group_name_locale: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                species_grouping:
                  Phoebe::Ref::Taxonomy::SpeciesGroupListParams::SpeciesGrouping::OrSymbol,
                group_name_locale: String,
                request_options: Phoebe::RequestOptions
              }
            )
          end
          def to_hash
          end

          # The order in which groups are returned.
          module SpeciesGrouping
            extend Phoebe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Phoebe::Ref::Taxonomy::SpeciesGroupListParams::SpeciesGrouping
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MERLIN =
              T.let(
                :merlin,
                Phoebe::Ref::Taxonomy::SpeciesGroupListParams::SpeciesGrouping::TaggedSymbol
              )
            EBIRD =
              T.let(
                :ebird,
                Phoebe::Ref::Taxonomy::SpeciesGroupListParams::SpeciesGrouping::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Phoebe::Ref::Taxonomy::SpeciesGroupListParams::SpeciesGrouping::TaggedSymbol
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
