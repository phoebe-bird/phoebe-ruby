# typed: strong

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
          sig do
            params(
              accept_language: String,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(
              T::Array[Phoebe::Models::Ref::Taxonomy::LocaleListResponseItem]
            )
          end
          def list(accept_language: nil, request_options: {})
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
