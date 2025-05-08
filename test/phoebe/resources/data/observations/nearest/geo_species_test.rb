# frozen_string_literal: true

require_relative "../../../../test_helper"

class Phoebe::Test::Resources::Data::Observations::Nearest::GeoSpeciesTest < Phoebe::Test::ResourceTest
  def test_list_required_params
    response = @phoebe.data.observations.nearest.geo_species.list("speciesCode", lat: -90, lng: -180)

    assert_pattern do
      response => ^(Phoebe::Internal::Type::ArrayOf[Phoebe::Data::Observation])
    end
  end
end
