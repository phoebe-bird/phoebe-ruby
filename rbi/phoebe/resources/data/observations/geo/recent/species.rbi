# typed: strong

module Phoebe
  module Resources
    class Data
      class Observations
        class Geo
          class Recent
            # The data/obs end-points are used to fetch observations submitted to eBird in
            # checklists. There are two categories of end-point: 1. Fetch observations for a
            # specific country, region or location. 2. Fetch observations for nearby
            # locations - up to a distance of 50km. Each end-point supports optional query
            # parameters which allow you to filter the list of observations returned.
            class Species
              # Get all observations of a species, seen up to 30 days ago, at any location
              # within a radius of up to 50 kilometers, from a given set of coordinates. Results
              # include only the most recent observation from each location in the region
              # specified.
              #
              # #### URL parameters
              #
              # | Name        | Description             |
              # | ----------- | ----------------------- |
              # | speciesCode | The eBird species code. |
              #
              # #### Notes
              #
              # The species code is typically a 6-letter code, e.g. horlar for Horned Lark. You
              # can get complete set of species code from the GET eBird Taxonomy end-point.
              sig do
                params(
                  species_code: String,
                  lat: Float,
                  lng: Float,
                  back: Integer,
                  dist: Integer,
                  hotspot: T::Boolean,
                  include_provisional: T::Boolean,
                  max_results: Integer,
                  spp_locale: String,
                  request_options: Phoebe::RequestOptions::OrHash
                ).returns(T::Array[Phoebe::Data::Observation])
              end
              def list(
                # The eBird species code.
                species_code,
                lat:,
                lng:,
                # The number of days back to fetch observations.
                back: nil,
                # The search radius from the given position, in kilometers.
                dist: nil,
                # Only fetch observations from hotspots
                hotspot: nil,
                # Include observations which have not yet been reviewed.
                include_provisional: nil,
                # Only fetch this number of observations
                max_results: nil,
                # Use this language for species common names
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
end
