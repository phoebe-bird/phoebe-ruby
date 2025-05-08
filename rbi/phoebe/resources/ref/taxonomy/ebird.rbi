# typed: strong

module Phoebe
  module Resources
    class Ref
      class Taxonomy
        class Ebird
          # Get the taxonomy used by eBird. #### Notes Each entry in the taxonomy contains a
          # species code for example, barswa for Barn Swallow. You can download the taxonomy
          # for selected species using the _species_ query parameter with a comma separating
          # each code. Otherwise the full taxonomy is downloaded.
          sig do
            params(
              cat: String,
              fmt: Phoebe::Ref::Taxonomy::EbirdRetrieveParams::Fmt::OrSymbol,
              locale: String,
              species: String,
              version: String,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(
              T::Array[Phoebe::Models::Ref::Taxonomy::EbirdRetrieveResponseItem]
            )
          end
          def retrieve(
            # Only fetch records from these taxonomic categories.
            cat: nil,
            # Fetch the records in CSV or JSON format.
            fmt: nil,
            # Use this language for common names.
            locale: nil,
            # Only fetch records for these species.
            species: nil,
            # Fetch a specific version of the taxonomy.
            version: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Phoebe::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
