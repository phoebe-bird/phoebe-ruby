# frozen_string_literal: true

require_relative "../../test_helper"

class Phoebe::Test::Resources::Product::Top100Test < Phoebe::Test::ResourceTest
  def test_retrieve_required_params
    response = @phoebe.product.top100.retrieve(1, region_code: "regionCode", y_: 0, m: 1)

    assert_pattern do
      response => ^(Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Product::Top100RetrieveResponseItem])
    end
  end
end
