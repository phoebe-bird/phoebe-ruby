# frozen_string_literal: true

module Phoebe
  module Models
    module Ref
      module Taxonomy
        class LocaleListResponseItem < Phoebe::Internal::Type::BaseModel
          # @!attribute code
          #
          #   @return [String, nil]
          optional :code, String

          # @!attribute last_updated
          #
          #   @return [String, nil]
          optional :last_updated, String, api_name: :lastUpdated

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(code: nil, last_updated: nil, name: nil)
          #   @param code [String]
          #   @param last_updated [String]
          #   @param name [String]
        end

        # @type [Phoebe::Internal::Type::Converter]
        LocaleListResponse =
          Phoebe::Internal::Type::ArrayOf[-> { Phoebe::Models::Ref::Taxonomy::LocaleListResponseItem }]
      end
    end
  end
end
