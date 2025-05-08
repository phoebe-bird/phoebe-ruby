# typed: strong

module Phoebe
  module Resources
    class Ref
      class Taxonomy
        class Forms
          # For a species, get the list of subspecies recognised in the taxonomy. The
          # results include the species that was passed in.
          sig do
            params(
              species_code: String,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(T::Array[String])
          end
          def list(
            # The eBird species code.
            species_code,
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
