# frozen_string_literal: true

require_relative "../../../test_helper"

class Phoebe::Test::Resources::Data::Observations::RecentTest < Phoebe::Test::ResourceTest
  def test_list
    response = @phoebe.data.observations.recent.list("regionCode")

    assert_pattern do
      response => ^(Phoebe::Internal::Type::ArrayOf[Phoebe::Data::Observation])
    end
  end
end
