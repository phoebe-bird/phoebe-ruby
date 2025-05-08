# frozen_string_literal: true

module Phoebe
  module Models
    module Ref
      module Region
        # @see Phoebe::Resources::Ref::Region::Info#retrieve
        class InfoRetrieveResponse < Phoebe::Internal::Type::BaseModel
          # @!attribute bounds
          #
          #   @return [Phoebe::Models::Ref::Region::InfoRetrieveResponse::Bounds, nil]
          optional :bounds, -> { Phoebe::Models::Ref::Region::InfoRetrieveResponse::Bounds }

          # @!attribute result
          #
          #   @return [String, nil]
          optional :result, String

          # @!method initialize(bounds: nil, result: nil)
          #   @param bounds [Phoebe::Models::Ref::Region::InfoRetrieveResponse::Bounds]
          #   @param result [String]

          # @see Phoebe::Models::Ref::Region::InfoRetrieveResponse#bounds
          class Bounds < Phoebe::Internal::Type::BaseModel
            # @!attribute max_x
            #
            #   @return [Float, nil]
            optional :max_x, Float, api_name: :maxX

            # @!attribute max_y
            #
            #   @return [Float, nil]
            optional :max_y, Float, api_name: :maxY

            # @!attribute min_x
            #
            #   @return [Float, nil]
            optional :min_x, Float, api_name: :minX

            # @!attribute min_y
            #
            #   @return [Float, nil]
            optional :min_y, Float, api_name: :minY

            # @!method initialize(max_x: nil, max_y: nil, min_x: nil, min_y: nil)
            #   @param max_x [Float]
            #   @param max_y [Float]
            #   @param min_x [Float]
            #   @param min_y [Float]
          end
        end
      end
    end
  end
end
