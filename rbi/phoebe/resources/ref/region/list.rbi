# typed: strong

module Phoebe
  module Resources
    class Ref
      class Region
        # The ref/region end-points return information on regions.
        class List
          # Get the list of sub-regions for a given country or region. #### Notes Not all
          # combinations of region type and region code are valid. You can fetch all the
          # subnational1 or subnational2 regions for a country however you can only specify
          # a region type of 'country' when using 'world' as a region code.
          sig do
            params(
              parent_region_code: String,
              region_type: String,
              fmt: Phoebe::Ref::Region::ListListParams::Fmt::OrSymbol,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(
              T::Array[Phoebe::Models::Ref::Region::ListListResponseItem]
            )
          end
          def list(
            # Path param: The country or subnational1 code, or 'world'.
            parent_region_code,
            # Path param: The region type: 'country', 'subnational1' or 'subnational2'.
            region_type:,
            # Query param: Fetch the records in CSV or JSON format.
            fmt: nil,
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
