# typed: strong

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
          sig do
            params(
              region_code: String,
              delim: String,
              region_name_format:
                Phoebe::Ref::Region::InfoRetrieveParams::RegionNameFormat::OrSymbol,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(Phoebe::Models::Ref::Region::InfoRetrieveResponse)
          end
          def retrieve(
            # The major region, country, subnational1 or subnational2 code, or locId
            region_code,
            # The characters used to separate elements in the name.
            delim: nil,
            # Control how the name is displayed.
            region_name_format: nil,
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
