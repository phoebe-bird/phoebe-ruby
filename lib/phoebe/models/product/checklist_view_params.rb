# frozen_string_literal: true

module Phoebe
  module Models
    module Product
      # @see Phoebe::Resources::Product::Checklist#view
      class ChecklistViewParams < Phoebe::Internal::Type::BaseModel
        extend Phoebe::Internal::Type::RequestParameters::Converter
        include Phoebe::Internal::Type::RequestParameters

        # @!attribute sub_id
        #
        #   @return [String]
        required :sub_id, String

        # @!method initialize(sub_id:, request_options: {})
        #   @param sub_id [String]
        #   @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
