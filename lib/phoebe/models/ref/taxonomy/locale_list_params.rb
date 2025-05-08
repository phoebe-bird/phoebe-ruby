# frozen_string_literal: true

module Phoebe
  module Models
    module Ref
      module Taxonomy
        # @see Phoebe::Resources::Ref::Taxonomy::Locales#list
        class LocaleListParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          # @!attribute accept_language
          #
          #   @return [String, nil]
          optional :accept_language, String

          # @!method initialize(accept_language: nil, request_options: {})
          #   @param accept_language [String]
          #   @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
