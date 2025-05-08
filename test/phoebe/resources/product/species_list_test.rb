# frozen_string_literal: true

require_relative "../../test_helper"

class Phoebe::Test::Resources::Product::SpeciesListTest < Phoebe::Test::ResourceTest
  def test_list
    response = @phoebe.product.species_list.list("regionCode")

    assert_pattern do
      response => ^(Phoebe::Internal::Type::ArrayOf[String])
    end
  end
end
