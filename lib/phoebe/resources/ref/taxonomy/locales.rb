# frozen_string_literal: true

module Phoebe
  module Resources
    class Ref
      class Taxonomy
        class Locales
          # Returns the list of supported locale codes and names for species common names,
          # with the last time they were updated. Use the accept-language header to get
          # translated language names when available.
          #
          # NOTE: The locale codes and names are stable but the other fields in this result
          # are not yet finalized and should be used with caution.
          #
          # @overload list(accept_language: nil, request_options: {})
          #
          # @param accept_language [String]
          # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<Phoebe::Models::Ref::Taxonomy::LocaleListResponseItem>]
          #
          # @see Phoebe::Models::Ref::Taxonomy::LocaleListParams
          def list(params = {})
            parsed, options = Phoebe::Ref::Taxonomy::LocaleListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "ref/taxa-locales/ebird",
              headers: parsed.transform_keys(accept_language: "accept-language"),
              model: Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Ref::Taxonomy::LocaleListResponseItem],
              options: options
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
