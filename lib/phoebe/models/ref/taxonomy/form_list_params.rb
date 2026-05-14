# frozen_string_literal: true

module Phoebe
  module Models
    module Ref
      module Taxonomy
        # @see Phoebe::Resources::Ref::Taxonomy::Forms#list
        class FormListParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          # @!attribute species_code
          #
          #   @return [String]
          required :species_code, String

          # @!method initialize(species_code:, request_options: {})
          #   @param species_code [String]
          #   @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
