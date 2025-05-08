# typed: strong

module Phoebe
  module Resources
    class Ref
      class Hotspot
        class Info
          # Get information on the location of a hotspot. #### Notes This API call only
          # works for hotspots. If you pass the location code for a private location or an
          # invalid location code then an HTTP 410 (Gone) error is returned.
          sig do
            params(
              loc_id: String,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(Phoebe::Models::Ref::Hotspot::InfoRetrieveResponse)
          end
          def retrieve(
            # The location code.
            loc_id,
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
