# frozen_string_literal: true

require_relative "../../../test_helper"

class Phoebe::Test::Resources::Ref::Hotspot::InfoTest < Phoebe::Test::ResourceTest
  def test_retrieve
    response = @phoebe.ref.hotspot.info.retrieve("locId")

    assert_pattern do
      response => Phoebe::Models::Ref::Hotspot::InfoRetrieveResponse
    end

    assert_pattern do
      response => {
        country_code: String | nil,
        country_name: String | nil,
        hierarchical_name: String | nil,
        is_hotspot: Phoebe::Internal::Type::Boolean | nil,
        lat: Float | nil,
        latitude: Float | nil,
        lng: Float | nil,
        loc_id: String | nil,
        loc_name: String | nil,
        longitude: Float | nil,
        name: String | nil,
        subnational1_code: String | nil,
        subnational1_name: String | nil
      }
    end
  end
end
