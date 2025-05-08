# frozen_string_literal: true

require_relative "../../test_helper"

class Phoebe::Test::Resources::Product::ChecklistTest < Phoebe::Test::ResourceTest
  def test_view
    response = @phoebe.product.checklist.view("subId")

    assert_pattern do
      response => Phoebe::Models::Product::ChecklistViewResponse
    end

    assert_pattern do
      response => {
        all_obs_reported: Phoebe::Internal::Type::Boolean | nil,
        checklist_id: String | nil,
        creation_dt: String | nil,
        duration_hrs: Float | nil,
        iso_obs_date: String | nil,
        last_edited_dt: String | nil,
        loc: Phoebe::Models::Product::ChecklistViewResponse::Loc | nil,
        loc_id: String | nil,
        num_observers: Integer | nil,
        num_species: Integer | nil,
        obs: ^(Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Product::ChecklistViewResponse::Ob]) | nil,
        obs_dt: String | nil,
        obs_time: String | nil,
        obs_time_valid: Phoebe::Internal::Type::Boolean | nil,
        proj_id: String | nil,
        protocol_id: String | nil,
        sub_id: String | nil,
        submission_method_code: String | nil,
        subnational1_code: String | nil,
        user_display_name: String | nil
      }
    end
  end
end
