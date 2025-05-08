# frozen_string_literal: true

require_relative "../../../test_helper"

class Phoebe::Test::Resources::Ref::Hotspot::GeoTest < Phoebe::Test::ResourceTest
  def test_retrieve_required_params
    response = @phoebe.ref.hotspot.geo.retrieve(lat: -90, lng: -180)

    assert_pattern do
      response => ^(Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Ref::Hotspot::GeoRetrieveResponseItem])
    end
  end
end
