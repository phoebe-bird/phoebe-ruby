# frozen_string_literal: true

module Phoebe
  module Resources
    class Ref
      class Taxonomy
        class Versions
          # Returns a list of all versions of the taxonomy, with a flag indicating which is
          # the latest.
          #
          # @overload list(request_options: {})
          #
          # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<Phoebe::Models::Ref::Taxonomy::VersionListResponseItem>]
          #
          # @see Phoebe::Models::Ref::Taxonomy::VersionListParams
          def list(params = {})
            @client.request(
              method: :get,
              path: "ref/taxonomy/versions",
              model: Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Ref::Taxonomy::VersionListResponseItem],
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
