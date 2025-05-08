# frozen_string_literal: true

require_relative "../../../test_helper"

class Phoebe::Test::Resources::Ref::Region::AdjacentTest < Phoebe::Test::ResourceTest
  def test_list
    response = @phoebe.ref.region.adjacent.list("regionCode")

    assert_pattern do
      response => ^(Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Ref::Region::AdjacentListResponseItem])
    end
  end
end
