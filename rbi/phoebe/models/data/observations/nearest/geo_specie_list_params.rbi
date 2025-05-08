# typed: strong

module Phoebe
  module Models
    module Data
      module Observations
        module Nearest
          class GeoSpecieListParams < Phoebe::Internal::Type::BaseModel
            extend Phoebe::Internal::Type::RequestParameters::Converter
            include Phoebe::Internal::Type::RequestParameters

            OrHash =
              T.type_alias { T.any(T.self_type, Phoebe::Internal::AnyHash) }

            sig { returns(Float) }
            attr_accessor :lat

            sig { returns(Float) }
            attr_accessor :lng

            # The number of days back to fetch observations.
            sig { returns(T.nilable(Integer)) }
            attr_reader :back

            sig { params(back: Integer).void }
            attr_writer :back

            # Only fetch observations within this distance of the provided lat/lng
            sig { returns(T.nilable(Integer)) }
            attr_reader :dist

            sig { params(dist: Integer).void }
            attr_writer :dist

            # Only fetch observations from hotspots
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :hotspot

            sig { params(hotspot: T::Boolean).void }
            attr_writer :hotspot

            # Include observations which have not yet been reviewed.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :include_provisional

            sig { params(include_provisional: T::Boolean).void }
            attr_writer :include_provisional

            # Only fetch up to this number of observations
            sig { returns(T.nilable(Integer)) }
            attr_reader :max_results

            sig { params(max_results: Integer).void }
            attr_writer :max_results

            # Use this language for species common names
            sig { returns(T.nilable(String)) }
            attr_reader :spp_locale

            sig { params(spp_locale: String).void }
            attr_writer :spp_locale

            sig do
              params(
                lat: Float,
                lng: Float,
                back: Integer,
                dist: Integer,
                hotspot: T::Boolean,
                include_provisional: T::Boolean,
                max_results: Integer,
                spp_locale: String,
                request_options: Phoebe::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
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

            sig do
              override.returns(
                {
                  lat: Float,
                  lng: Float,
                  back: Integer,
                  dist: Integer,
                  hotspot: T::Boolean,
                  include_provisional: T::Boolean,
                  max_results: Integer,
                  spp_locale: String,
                  request_options: Phoebe::RequestOptions
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
