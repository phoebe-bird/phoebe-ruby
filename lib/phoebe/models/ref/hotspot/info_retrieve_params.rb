# frozen_string_literal: true

module Phoebe
  module Models
    module Ref
      module Hotspot
        # @see Phoebe::Resources::Ref::Hotspot::Info#retrieve
        class InfoRetrieveParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          # @!attribute loc_id
          #
          #   @return [String]
          required :loc_id, String

          # @!method initialize(loc_id:, request_options: {})
          #   @param loc_id [String]
          #   @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
