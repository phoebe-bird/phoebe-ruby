# frozen_string_literal: true

require_relative "../../test_helper"

class Phoebe::Test::Resources::Product::StatsTest < Phoebe::Test::ResourceTest
  def test_retrieve_required_params
    response = @phoebe.product.stats.retrieve(1, region_code: "regionCode", y_: 0, m: 1)

    assert_pattern do
      response => Phoebe::Models::Product::StatRetrieveResponse
    end

    assert_pattern do
      response => {
        num_checklists: Integer | nil,
        num_contributors: Integer | nil,
        num_species: Integer | nil
      }
    end
  end
end
