# frozen_string_literal: true

require_relative "../../test_helper"

class Phoebe::Test::Resources::Product::ListsTest < Phoebe::Test::ResourceTest
  def test_retrieve
    response = @phoebe.product.lists.retrieve("regionCode")

    assert_pattern do
      response => ^(Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Product::ListRetrieveResponseItem])
    end
  end
end
