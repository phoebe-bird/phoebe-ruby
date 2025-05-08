# frozen_string_literal: true

module Phoebe
  module Models
    module Ref
      module Taxonomy
        class SpeciesGroupListResponseItem < Phoebe::Internal::Type::BaseModel
          # @!attribute group_name
          #
          #   @return [String, nil]
          optional :group_name, String, api_name: :groupName

          # @!attribute group_order
          #
          #   @return [Integer, nil]
          optional :group_order, Integer, api_name: :groupOrder

          # @!attribute taxon_order_bounds
          #
          #   @return [Array<Array<Float>>, nil]
          optional :taxon_order_bounds,
                   Phoebe::Internal::Type::ArrayOf[Phoebe::Internal::Type::ArrayOf[Float]],
                   api_name: :taxonOrderBounds

          # @!method initialize(group_name: nil, group_order: nil, taxon_order_bounds: nil)
          #   @param group_name [String]
          #   @param group_order [Integer]
          #   @param taxon_order_bounds [Array<Array<Float>>]
        end

        # @type [Phoebe::Internal::Type::Converter]
        SpeciesGroupListResponse =
          Phoebe::Internal::Type::ArrayOf[-> { Phoebe::Models::Ref::Taxonomy::SpeciesGroupListResponseItem }]
      end
    end
  end
end
