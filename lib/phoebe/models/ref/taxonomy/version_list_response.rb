# frozen_string_literal: true

module Phoebe
  module Models
    module Ref
      module Taxonomy
        class VersionListResponseItem < Phoebe::Internal::Type::BaseModel
          # @!attribute authority_ver
          #
          #   @return [Float, nil]
          optional :authority_ver, Float, api_name: :authorityVer

          # @!attribute latest
          #
          #   @return [Boolean, nil]
          optional :latest, Phoebe::Internal::Type::Boolean

          # @!method initialize(authority_ver: nil, latest: nil)
          #   @param authority_ver [Float]
          #   @param latest [Boolean]
        end

        # @type [Phoebe::Internal::Type::Converter]
        VersionListResponse =
          Phoebe::Internal::Type::ArrayOf[-> { Phoebe::Models::Ref::Taxonomy::VersionListResponseItem }]
      end
    end
  end
end
