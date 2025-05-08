# frozen_string_literal: true

require_relative "../../../test_helper"

class Phoebe::Test::Resources::Ref::Taxonomy::VersionsTest < Phoebe::Test::ResourceTest
  def test_list
    response = @phoebe.ref.taxonomy.versions.list

    assert_pattern do
      response => ^(Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Ref::Taxonomy::VersionListResponseItem])
    end
  end
end
