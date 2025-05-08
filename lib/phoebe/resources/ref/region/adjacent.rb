# frozen_string_literal: true

module Phoebe
  module Resources
    class Ref
      class Region
        class Adjacent
          # Get the list of countries or regions that share a border with this one. ####
          # Notes Only subnational2 codes in the United States, New Zealand, or Mexico are
          # currently supported
          #
          # @overload list(region_code, request_options: {})
          #
          # @param region_code [String] The country, subnational1 or subnational2 code.
          #
          # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<Phoebe::Models::Ref::Region::AdjacentListResponseItem>]
          #
          # @see Phoebe::Models::Ref::Region::AdjacentListParams
          def list(region_code, params = {})
            @client.request(
              method: :get,
              path: ["ref/adjacent/%1$s", region_code],
              model: Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Ref::Region::AdjacentListResponseItem],
              options: params[:request_options]
            )
          end

          # @api private
          #
          # @param client [Phoebe::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
