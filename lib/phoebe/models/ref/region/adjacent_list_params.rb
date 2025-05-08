# frozen_string_literal: true

module Phoebe
  module Models
    module Ref
      module Region
        # @see Phoebe::Resources::Ref::Region::Adjacent#list
        class AdjacentListParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
