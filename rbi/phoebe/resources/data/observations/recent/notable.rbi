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
          class Notable
            # Get the list of recent, notable observations (up to 30 days ago) of birds seen
            # in a country, region or location. Notable observations can be for locally or
            # nationally rare species or are otherwise unusual, e.g. over-wintering birds in a
            # species which is normally only a summer visitor.
            sig do
              params(
                region_code: String,
                back: Integer,
                detail:
                  Phoebe::Data::Observations::Recent::NotableListParams::Detail::OrSymbol,
                hotspot: T::Boolean,
                max_results: Integer,
                r: T::Array[String],
                spp_locale: String,
                request_options: Phoebe::RequestOptions::OrHash
              ).returns(T::Array[Phoebe::Data::Observation])
            end
            def list(
              # The country, subnational1, subnational2 or location code.
              region_code,
              # The number of days back to fetch observations.
              back: nil,
              # Include a subset (simple), or all (full), of the fields available.
              detail: nil,
              # Only fetch observations from hotspots
              hotspot: nil,
              # Only fetch this number of observations
              max_results: nil,
              # Fetch observations from up to 10 locations
              r: nil,
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
