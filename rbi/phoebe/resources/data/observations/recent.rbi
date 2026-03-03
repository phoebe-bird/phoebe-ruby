# typed: strong

module Phoebe
  module Resources
    class Data
      class Observations
        # The data/obs end-points are used to fetch observations submitted to eBird in
        # checklists. There are two categories of end-point: 1. Fetch observations for a
        # specific country, region or location. 2. Fetch observations for nearby
        # locations - up to a distance of 50km. Each end-point supports optional query
        # parameters which allow you to filter the list of observations returned.
        class Recent
          # The data/obs end-points are used to fetch observations submitted to eBird in
          # checklists. There are two categories of end-point: 1. Fetch observations for a
          # specific country, region or location. 2. Fetch observations for nearby
          # locations - up to a distance of 50km. Each end-point supports optional query
          # parameters which allow you to filter the list of observations returned.
          sig do
            returns(Phoebe::Resources::Data::Observations::Recent::Notable)
          end
          attr_reader :notable

          # The data/obs end-points are used to fetch observations submitted to eBird in
          # checklists. There are two categories of end-point: 1. Fetch observations for a
          # specific country, region or location. 2. Fetch observations for nearby
          # locations - up to a distance of 50km. Each end-point supports optional query
          # parameters which allow you to filter the list of observations returned.
          sig do
            returns(Phoebe::Resources::Data::Observations::Recent::Species)
          end
          attr_reader :species

          # The data/obs end-points are used to fetch observations submitted to eBird in
          # checklists. There are two categories of end-point: 1. Fetch observations for a
          # specific country, region or location. 2. Fetch observations for nearby
          # locations - up to a distance of 50km. Each end-point supports optional query
          # parameters which allow you to filter the list of observations returned.
          sig do
            returns(Phoebe::Resources::Data::Observations::Recent::Historic)
          end
          attr_reader :historic

          # Get the list of recent observations (up to 30 days ago) of birds seen in a
          # country, state, county, or location. Results include only the most recent
          # observation for each species in the region specified.
          sig do
            params(
              region_code: String,
              back: Integer,
              cat: Phoebe::Data::Observations::RecentListParams::Cat::OrSymbol,
              hotspot: T::Boolean,
              include_provisional: T::Boolean,
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
            # Only fetch observations from these taxonomic categories
            cat: nil,
            # Only fetch observations from hotspots
            hotspot: nil,
            # Include observations which have not yet been reviewed
            include_provisional: nil,
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
