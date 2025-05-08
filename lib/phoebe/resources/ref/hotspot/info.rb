# frozen_string_literal: true

module Phoebe
  module Resources
    class Ref
      class Hotspot
        class Info
          # Get information on the location of a hotspot. #### Notes This API call only
          # works for hotspots. If you pass the location code for a private location or an
          # invalid location code then an HTTP 410 (Gone) error is returned.
          #
          # @overload retrieve(loc_id, request_options: {})
          #
          # @param loc_id [String] The location code.
          #
          # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Phoebe::Models::Ref::Hotspot::InfoRetrieveResponse]
          #
          # @see Phoebe::Models::Ref::Hotspot::InfoRetrieveParams
          def retrieve(loc_id, params = {})
            @client.request(
              method: :get,
              path: ["ref/hotspot/info/%1$s", loc_id],
              model: Phoebe::Models::Ref::Hotspot::InfoRetrieveResponse,
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
