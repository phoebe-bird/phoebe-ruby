# typed: strong

module Phoebe
  module Resources
    class Data
      class Observations
        class Geo
          class Recent
            class Notable
              # Get the list of notable observations (up to 30 days ago) of birds seen at
              # locations within a radius of up to 50 kilometers, from a given set of
              # coordinates. Notable observations can be for locally or nationally rare species
              # or are otherwise unusual, for example over-wintering birds in a species which is
              # normally only a summer visitor.
              sig do
                params(
                  lat: Float,
                  lng: Float,
                  back: Integer,
                  detail:
                    Phoebe::Data::Observations::Geo::Recent::NotableListParams::Detail::OrSymbol,
                  dist: Integer,
                  hotspot: T::Boolean,
                  max_results: Integer,
                  spp_locale: String,
                  request_options: Phoebe::RequestOptions::OrHash
                ).returns(T::Array[Phoebe::Data::Observation])
              end
              def list(
                lat:,
                lng:,
                # The number of days back to fetch observations.
                back: nil,
                # Include a subset (simple), or all (full), of the fields available.
                detail: nil,
                # The search radius from the given position, in kilometers.
                dist: nil,
                # Only fetch observations from hotspots
                hotspot: nil,
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
