# frozen_string_literal: true

require_relative "../../../../test_helper"

class Phoebe::Test::Resources::Data::Observations::Recent::SpeciesTest < Phoebe::Test::ResourceTest
  def test_retrieve_required_params
    response = @phoebe.data.observations.recent.species.retrieve("speciesCode", region_code: "regionCode")

    assert_pattern do
      response => ^(Phoebe::Internal::Type::ArrayOf[Phoebe::Data::Observation])
    end
  end
end
