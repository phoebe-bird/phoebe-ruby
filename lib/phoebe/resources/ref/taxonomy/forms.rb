# frozen_string_literal: true

module Phoebe
  module Resources
    class Ref
      class Taxonomy
        class Forms
          # For a species, get the list of subspecies recognised in the taxonomy. The
          # results include the species that was passed in.
          #
          # @overload list(species_code, request_options: {})
          #
          # @param species_code [String] The eBird species code.
          #
          # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<String>]
          #
          # @see Phoebe::Models::Ref::Taxonomy::FormListParams
          def list(species_code, params = {})
            @client.request(
              method: :get,
              path: ["ref/taxon/forms/%1$s", species_code],
              model: Phoebe::Internal::Type::ArrayOf[String],
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
