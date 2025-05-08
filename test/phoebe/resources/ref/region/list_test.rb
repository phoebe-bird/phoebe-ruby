# frozen_string_literal: true

require_relative "../../../test_helper"

class Phoebe::Test::Resources::Ref::Region::ListTest < Phoebe::Test::ResourceTest
  def test_list_required_params
    response = @phoebe.ref.region.list.list("parentRegionCode", region_type: "regionType")

    assert_pattern do
      response => ^(Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Ref::Region::ListListResponseItem])
    end
  end
end
