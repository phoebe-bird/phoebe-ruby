# typed: strong

module Phoebe
  module Resources
    class Data
      class Observations
        class Recent
          # The data/obs end-points are used to fetch observations submitted to eBird in
          # checklists. There are two categories of end-point: 1. Fetch observations for a
          # specific country, region or location. 2. Fetch observations for nearby
          # locations - up to a distance of 50km. Each end-point supports optional query
          # parameters which allow you to filter the list of observations returned.
          class Species
            # Get the recent observations, up to 30 days ago, of a particular species in a
            # country, region or location. Results include only the most recent observation
            # from each location in the region specified.
            #
            # #### Notes
            #
            # The species code is typically a 6-letter code, e.g. cangoo for Canada Goose. You
            # can get complete set of species code from the GET eBird Taxonomy end-point.
            #
            # When using the _r_ query parameter set the _regionCode_ URL parameter to an
            # empty string.
            sig do
              params(
                species_code: String,
                region_code: String,
                back: Integer,
                hotspot: T::Boolean,
                include_provisional: T::Boolean,
                max_results: Integer,
                r: T::Array[String],
                spp_locale: String,
                request_options: Phoebe::RequestOptions::OrHash
              ).returns(T::Array[Phoebe::Data::Observation])
            end
            def retrieve(
              # Path param: The eBird species code.
              species_code,
              # Path param: The country, subnational1, subnational2 or location code.
              region_code:,
              # Query param: The number of days back to fetch observations.
              back: nil,
              # Query param: Only fetch observations from hotspots
              hotspot: nil,
              # Query param: Include observations which have not yet been reviewed.
              include_provisional: nil,
              # Query param: Only fetch this number of observations
              max_results: nil,
              # Query param: Fetch observations from up to 10 locations
              r: nil,
              # Query param: Use this language for species common names
              spp_locale: nil,
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
end
