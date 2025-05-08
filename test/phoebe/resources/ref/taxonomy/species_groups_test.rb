# frozen_string_literal: true

require_relative "../../../test_helper"

class Phoebe::Test::Resources::Ref::Taxonomy::SpeciesGroupsTest < Phoebe::Test::ResourceTest
  def test_list
    response = @phoebe.ref.taxonomy.species_groups.list(:merlin)

    assert_pattern do
      response => ^(Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Ref::Taxonomy::SpeciesGroupListResponseItem])
    end
  end
end
