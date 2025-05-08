# frozen_string_literal: true

require_relative "../../../../test_helper"

class Phoebe::Test::Resources::Data::Observations::Recent::HistoricTest < Phoebe::Test::ResourceTest
  def test_list_required_params
    response = @phoebe.data.observations.recent.historic.list(1, region_code: "regionCode", y_: 0, m: 1)

    assert_pattern do
      response => ^(Phoebe::Internal::Type::ArrayOf[Phoebe::Data::Observation])
    end
  end
end
