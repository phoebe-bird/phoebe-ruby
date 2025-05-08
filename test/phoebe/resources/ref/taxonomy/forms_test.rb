# frozen_string_literal: true

require_relative "../../../test_helper"

class Phoebe::Test::Resources::Ref::Taxonomy::FormsTest < Phoebe::Test::ResourceTest
  def test_list
    response = @phoebe.ref.taxonomy.forms.list("speciesCode")

    assert_pattern do
      response => ^(Phoebe::Internal::Type::ArrayOf[String])
    end
  end
end
