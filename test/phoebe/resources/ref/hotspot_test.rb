# frozen_string_literal: true

require_relative "../../test_helper"

class Phoebe::Test::Resources::Ref::HotspotTest < Phoebe::Test::ResourceTest
  def test_list
    response = @phoebe.ref.hotspot.list("regionCode")

    assert_pattern do
      response => ^(Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Ref::HotspotListResponseItem])
    end
  end
end
