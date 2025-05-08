# frozen_string_literal: true

require_relative "../../../test_helper"

class Phoebe::Test::Resources::Ref::Region::InfoTest < Phoebe::Test::ResourceTest
  def test_retrieve
    response = @phoebe.ref.region.info.retrieve("regionCode")

    assert_pattern do
      response => Phoebe::Models::Ref::Region::InfoRetrieveResponse
    end

    assert_pattern do
      response => {
        bounds: Phoebe::Models::Ref::Region::InfoRetrieveResponse::Bounds | nil,
        result: String | nil
      }
    end
  end
end
