# frozen_string_literal: true

require_relative "../../../test_helper"

class Phoebe::Test::Resources::Ref::Taxonomy::EbirdTest < Phoebe::Test::ResourceTest
  def test_retrieve
    response = @phoebe.ref.taxonomy.ebird.retrieve

    assert_pattern do
      response => ^(Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Ref::Taxonomy::EbirdRetrieveResponseItem])
    end
  end
end
