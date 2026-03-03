# typed: strong

module Phoebe
  module Resources
    class Ref
      class Region
        # With the ref/geo end-point you can find a country's or region's neighbours.
        class Adjacent
          # Get the list of countries or regions that share a border with this one. ####
          # Notes Only subnational2 codes in the United States, New Zealand, or Mexico are
          # currently supported
          sig do
            params(
              region_code: String,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(
              T::Array[Phoebe::Models::Ref::Region::AdjacentListResponseItem]
            )
          end
          def list(
            # The country, subnational1 or subnational2 code.
            region_code,
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
