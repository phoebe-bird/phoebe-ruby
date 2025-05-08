# typed: strong

module Phoebe
  module Resources
    class Ref
      class Taxonomy
        class Versions
          # Returns a list of all versions of the taxonomy, with a flag indicating which is
          # the latest.
          sig do
            params(request_options: Phoebe::RequestOptions::OrHash).returns(
              T::Array[Phoebe::Models::Ref::Taxonomy::VersionListResponseItem]
            )
          end
          def list(request_options: {})
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
