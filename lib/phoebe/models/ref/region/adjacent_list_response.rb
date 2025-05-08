# frozen_string_literal: true

module Phoebe
  module Models
    module Ref
      module Region
        class AdjacentListResponseItem < Phoebe::Internal::Type::BaseModel
          # @!attribute code
          #
          #   @return [String, nil]
          optional :code, String

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(code: nil, name: nil)
          #   @param code [String]
          #   @param name [String]
        end

        # @type [Phoebe::Internal::Type::Converter]
        AdjacentListResponse =
          Phoebe::Internal::Type::ArrayOf[-> { Phoebe::Models::Ref::Region::AdjacentListResponseItem }]
      end
    end
  end
end
