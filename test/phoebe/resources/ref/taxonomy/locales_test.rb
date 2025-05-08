# frozen_string_literal: true

require_relative "../../../test_helper"

class Phoebe::Test::Resources::Ref::Taxonomy::LocalesTest < Phoebe::Test::ResourceTest
  def test_list
    response = @phoebe.ref.taxonomy.locales.list

    assert_pattern do
      response => ^(Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Ref::Taxonomy::LocaleListResponseItem])
    end
  end
end
