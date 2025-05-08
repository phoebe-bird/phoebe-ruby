# typed: strong

module Phoebe
  module Resources
    class Ref
      class Taxonomy
        sig { returns(Phoebe::Resources::Ref::Taxonomy::Ebird) }
        attr_reader :ebird

        sig { returns(Phoebe::Resources::Ref::Taxonomy::Forms) }
        attr_reader :forms

        sig { returns(Phoebe::Resources::Ref::Taxonomy::Locales) }
        attr_reader :locales

        sig { returns(Phoebe::Resources::Ref::Taxonomy::Versions) }
        attr_reader :versions

        sig { returns(Phoebe::Resources::Ref::Taxonomy::SpeciesGroups) }
        attr_reader :species_groups

        # @api private
        sig { params(client: Phoebe::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
