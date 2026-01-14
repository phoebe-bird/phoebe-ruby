# typed: strong

module Phoebe
  module Resources
    class Data
      class Observations
        class Recent
          class Historic
            # Get a list of all taxa seen in a country, region or location on a specific date,
            # with the specific observations determined by the "rank" parameter (defaults to
            # latest observation on the date).
            #
            # #### Notes Responses may be cached for 30 minutes
            sig do
              params(
                d: Integer,
                region_code: String,
                y_: Integer,
                m: Integer,
                cat:
                  Phoebe::Data::Observations::Recent::HistoricListParams::Cat::OrSymbol,
                detail:
                  Phoebe::Data::Observations::Recent::HistoricListParams::Detail::OrSymbol,
                hotspot: T::Boolean,
                include_provisional: T::Boolean,
                max_results: Integer,
                r: T::Array[String],
                rank:
                  Phoebe::Data::Observations::Recent::HistoricListParams::Rank::OrSymbol,
                spp_locale: String,
                request_options: Phoebe::RequestOptions::OrHash
              ).returns(T::Array[Phoebe::Data::Observation])
            end
            def list(
              # Path param
              d,
              # Path param: The country, subnational1, subnational2 or location code.
              region_code:,
              # Path param
              y_:,
              # Path param
              m:,
              # Query param: Only fetch observations from these taxonomic categories
              cat: nil,
              # Query param: Include a subset (simple), or all (full), of the fields available.
              detail: nil,
              # Query param: Only fetch observations from hotspots
              hotspot: nil,
              # Query param: Include observations which have not yet been reviewed.
              include_provisional: nil,
              # Query param: Only fetch this number of observations
              max_results: nil,
              # Query param: Fetch observations from up to 50 locations
              r: nil,
              # Query param: Include latest observation of the day, or the first added
              rank: nil,
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
