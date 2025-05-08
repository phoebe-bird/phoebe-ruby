# frozen_string_literal: true

module Phoebe
  module Resources
    class Ref
      class Taxonomy
        # @return [Phoebe::Resources::Ref::Taxonomy::Ebird]
        attr_reader :ebird

        # @return [Phoebe::Resources::Ref::Taxonomy::Forms]
        attr_reader :forms

        # @return [Phoebe::Resources::Ref::Taxonomy::Locales]
        attr_reader :locales

        # @return [Phoebe::Resources::Ref::Taxonomy::Versions]
        attr_reader :versions

        # @return [Phoebe::Resources::Ref::Taxonomy::SpeciesGroups]
        attr_reader :species_groups

        # @api private
        #
        # @param client [Phoebe::Client]
        def initialize(client:)
          @client = client
          @ebird = Phoebe::Resources::Ref::Taxonomy::Ebird.new(client: client)
          @forms = Phoebe::Resources::Ref::Taxonomy::Forms.new(client: client)
          @locales = Phoebe::Resources::Ref::Taxonomy::Locales.new(client: client)
          @versions = Phoebe::Resources::Ref::Taxonomy::Versions.new(client: client)
          @species_groups = Phoebe::Resources::Ref::Taxonomy::SpeciesGroups.new(client: client)
        end
      end
    end
  end
end
