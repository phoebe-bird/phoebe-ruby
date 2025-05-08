# frozen_string_literal: true

module Phoebe
  module Resources
    class Ref
      class Taxonomy
        class SpeciesGroups
          # Some parameter documentations has been truncated, see
          # {Phoebe::Models::Ref::Taxonomy::SpeciesGroupListParams} for more details.
          #
          # Get the list of species groups, e.g. terns, finches, etc. #### Notes Merlin puts
          # like birds together, with Falcons next to Hawks, whereas eBird follows taxonomic
          # order.
          #
          # @overload list(species_grouping, group_name_locale: nil, request_options: {})
          #
          # @param species_grouping [Symbol, Phoebe::Ref::Taxonomy::SpeciesGroupListParams::SpeciesGrouping] The order in which groups are returned.
          #
          # @param group_name_locale [String] Locale for species group names. English names are returned for any non-listed lo
          #
          # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<Phoebe::Models::Ref::Taxonomy::SpeciesGroupListResponseItem>]
          #
          # @see Phoebe::Models::Ref::Taxonomy::SpeciesGroupListParams
          def list(species_grouping, params = {})
            parsed, options = Phoebe::Ref::Taxonomy::SpeciesGroupListParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["ref/sppgroup/%1$s", species_grouping],
              query: parsed.transform_keys(group_name_locale: "groupNameLocale"),
              model: Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Ref::Taxonomy::SpeciesGroupListResponseItem],
              options: options
            )
          end

          # @api private
          #
          # @param client [Phoebe::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
