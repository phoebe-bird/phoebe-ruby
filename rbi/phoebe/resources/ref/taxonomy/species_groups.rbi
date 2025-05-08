# typed: strong

module Phoebe
  module Resources
    class Ref
      class Taxonomy
        class SpeciesGroups
          # Get the list of species groups, e.g. terns, finches, etc. #### Notes Merlin puts
          # like birds together, with Falcons next to Hawks, whereas eBird follows taxonomic
          # order.
          sig do
            params(
              species_grouping:
                Phoebe::Ref::Taxonomy::SpeciesGroupListParams::SpeciesGrouping::OrSymbol,
              group_name_locale: String,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(
              T::Array[
                Phoebe::Models::Ref::Taxonomy::SpeciesGroupListResponseItem
              ]
            )
          end
          def list(
            # The order in which groups are returned.
            species_grouping,
            # Locale for species group names. English names are returned for any non-listed
            # locale or any non-translated group name.
            group_name_locale: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Phoebe::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
