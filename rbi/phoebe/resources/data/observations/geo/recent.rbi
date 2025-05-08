# typed: strong

module Phoebe
  module Resources
    class Data
      class Observations
        class Geo
          class Recent
            sig do
              returns(
                Phoebe::Resources::Data::Observations::Geo::Recent::Species
              )
            end
            attr_reader :species

            sig do
              returns(
                Phoebe::Resources::Data::Observations::Geo::Recent::Notable
              )
            end
            attr_reader :notable

            # Get the list of recent observations (up to 30 days ago) of birds seen at
            # locations within a radius of up to 50 kilometers, from a given set of
            # coordinates. Results include only the most recent observation for each species
            # in the region specified.
            sig do
              params(
                lat: Float,
                lng: Float,
                back: Integer,
                cat:
                  Phoebe::Data::Observations::Geo::RecentListParams::Cat::OrSymbol,
                dist: Integer,
                hotspot: T::Boolean,
                include_provisional: T::Boolean,
                max_results: Integer,
                sort:
                  Phoebe::Data::Observations::Geo::RecentListParams::Sort::OrSymbol,
                spp_locale: String,
                request_options: Phoebe::RequestOptions::OrHash
              ).returns(T::Array[Phoebe::Data::Observation])
            end
            def list(
              lat:,
              lng:,
              # The number of days back to fetch observations.
              back: nil,
              # Only fetch observations from these taxonomic categories
              cat: nil,
              # The search radius from the given position, in kilometers.
              dist: nil,
              # Only fetch observations from hotspots
              hotspot: nil,
              # Include observations which have not yet been reviewed.
              include_provisional: nil,
              # Only fetch this number of observations
              max_results: nil,
              # Sort observations by taxonomy or by date, most recent first.
              sort: nil,
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
