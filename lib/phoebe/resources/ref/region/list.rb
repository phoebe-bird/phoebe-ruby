# frozen_string_literal: true

module Phoebe
  module Resources
    class Ref
      class Region
        class List
          # Get the list of sub-regions for a given country or region. #### Notes Not all
          # combinations of region type and region code are valid. You can fetch all the
          # subnational1 or subnational2 regions for a country however you can only specify
          # a region type of 'country' when using 'world' as a region code.
          #
          # @overload list(parent_region_code, region_type:, fmt: nil, request_options: {})
          #
          # @param parent_region_code [String] Path param: The country or subnational1 code, or 'world'.
          #
          # @param region_type [String] Path param: The region type: 'country', 'subnational1' or 'subnational2'.
          #
          # @param fmt [Symbol, Phoebe::Models::Ref::Region::ListListParams::Fmt] Query param: Fetch the records in CSV or JSON format.
          #
          # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<Phoebe::Models::Ref::Region::ListListResponseItem>]
          #
          # @see Phoebe::Models::Ref::Region::ListListParams
          def list(parent_region_code, params)
            parsed, options = Phoebe::Ref::Region::ListListParams.dump_request(params)
            region_type =
              parsed.delete(:region_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["ref/region/list/%1$s/%2$s", region_type, parent_region_code],
              query: parsed,
              model: Phoebe::Internal::Type::ArrayOf[Phoebe::Models::Ref::Region::ListListResponseItem],
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
