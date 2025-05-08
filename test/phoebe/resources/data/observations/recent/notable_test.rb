# frozen_string_literal: true

require_relative "../../../../test_helper"

class Phoebe::Test::Resources::Data::Observations::Recent::NotableTest < Phoebe::Test::ResourceTest
  def test_list
    response = @phoebe.data.observations.recent.notable.list("regionCode")

    assert_pattern do
      response => ^(Phoebe::Internal::Type::ArrayOf[Phoebe::Data::Observation])
    end
  end
end
