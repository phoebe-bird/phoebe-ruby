# frozen_string_literal: true

module Phoebe
  module Models
    module Ref
      module Taxonomy
        # @see Phoebe::Resources::Ref::Taxonomy::SpeciesGroups#list
        class SpeciesGroupListParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          # @!attribute group_name_locale
          #   Locale for species group names. English names are returned for any non-listed
          #   locale or any non-translated group name.
          #
          #   @return [String, nil]
          optional :group_name_locale, String

          # @!method initialize(group_name_locale: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Phoebe::Models::Ref::Taxonomy::SpeciesGroupListParams} for more details.
          #
          #   @param group_name_locale [String] Locale for species group names. English names are returned for any non-listed lo
          #
          #   @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}]

          # The order in which groups are returned.
          module SpeciesGrouping
            extend Phoebe::Internal::Type::Enum

            MERLIN = :merlin
            EBIRD = :ebird

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
