# frozen_string_literal: true

module Phoebe
  module Models
    module Ref
      module Region
        class ListListResponseItem < Phoebe::Internal::Type::BaseModel
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
        ListListResponse =
          Phoebe::Internal::Type::ArrayOf[-> { Phoebe::Models::Ref::Region::ListListResponseItem }]
      end
    end
  end
end
