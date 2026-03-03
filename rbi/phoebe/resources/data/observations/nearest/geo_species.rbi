# typed: strong

module Phoebe
  module Resources
    class Data
      class Observations
        class Nearest
          # The data/obs end-points are used to fetch observations submitted to eBird in
          # checklists. There are two categories of end-point: 1. Fetch observations for a
          # specific country, region or location. 2. Fetch observations for nearby
          # locations - up to a distance of 50km. Each end-point supports optional query
          # parameters which allow you to filter the list of observations returned.
          class GeoSpecies
            # Find the nearest locations where a species has been seen recently. #### Notes
            # The species code is typically a 6-letter code, e.g. barswa for Barn Swallow. You
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
              # Only fetch observations within this distance of the provided lat/lng
              dist: nil,
              # Only fetch observations from hotspots
              hotspot: nil,
              # Include observations which have not yet been reviewed.
              include_provisional: nil,
              # Only fetch up to this number of observations
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
