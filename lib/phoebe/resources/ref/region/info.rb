# frozen_string_literal: true

module Phoebe
  module Resources
    class Ref
      class Region
        class Info
          # Get information on the name and geographical area covered by a region.
          #
          # #### Notes
          #
          # Taking Madison County, New York, USA (location code US-NY-053) as an example the
          # various values for the regionNameFormat query parameter work as follows:
          #
          # | Value          | Description                                | Result                           |
          # | -------------- | ------------------------------------------ | -------------------------------- |
          # | detailed       | return a detailed description              | Madison County, New York, US     |
          # | detailednoqual | return the name to the subnational1 level  | Madison, New York                |
          # | full           | return the full description                | Madison, New York, United States |
          # | namequal       | return the qualified name                  | Madison County                   |
          # | nameonly       | return only the name of the region         | Madison                          |
          # | revdetailed    | return the detailed description in reverse | US, New York, Madison County     |
          #
          # @overload retrieve(region_code, delim: nil, region_name_format: nil, request_options: {})
          #
          # @param region_code [String] The major region, country, subnational1 or subnational2 code, or locId
          #
          # @param delim [String] The characters used to separate elements in the name.
          #
          # @param region_name_format [Symbol, Phoebe::Models::Ref::Region::InfoRetrieveParams::RegionNameFormat] Control how the name is displayed.
          #
          # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Phoebe::Models::Ref::Region::InfoRetrieveResponse]
          #
          # @see Phoebe::Models::Ref::Region::InfoRetrieveParams
          def retrieve(region_code, params = {})
            parsed, options = Phoebe::Ref::Region::InfoRetrieveParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["ref/region/info/%1$s", region_code],
              query: parsed.transform_keys(region_name_format: "regionNameFormat"),
              model: Phoebe::Models::Ref::Region::InfoRetrieveResponse,
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
