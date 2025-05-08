# frozen_string_literal: true

module Phoebe
  module Resources
    class Ref
      class Taxonomy
        class Ebird
          # Get the taxonomy used by eBird. #### Notes Each entry in the taxonomy contains a
          # species code for example, barswa for Barn Swallow. You can download the taxonomy
          # for selected species using the _species_ query parameter with a comma separating
          # each code. Otherwise the full taxonomy is downloaded.
          #
          # @overload retrieve(cat: nil, fmt: nil, locale: nil, species: nil, version: nil, request_options: {})
          #
          # @param cat [String] Only fetch records from these taxonomic categories.
          #
          # @param fmt [Symbol, Phoebe::Ref::Taxonomy::EbirdRetrieveParams::Fmt] Fetch the records in CSV or JSON format.
          #
          # @param locale [String] Use this language for common names.
          #
          # @param species [String] Only fetch records for these species.
          #
          # @param version [String] Fetch a specific version of the taxonomy.
          #
          # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<Phoebe::Models::Ref::Taxonomy::EbirdRetrieveResponseItem>]
          #
          # @see Phoebe::Models::Ref::Taxonomy::EbirdRetrieveParams
          def retrieve(params = {})
            parsed, options = Phoebe::Ref::Taxonomy::EbirdRetrieveParams.dump_request(params)
            @client.request(
              method: :get,
              path: "ref/taxonomy/ebird",
              query: parsed,
              model: Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Ref::Taxonomy::EbirdRetrieveResponseItem],
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
