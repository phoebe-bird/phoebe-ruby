# frozen_string_literal: true

module Phoebe
  module Models
    module Data
      module Observations
        module Recent
          # @see Phoebe::Resources::Data::Observations::Recent::Historic#list
          class HistoricListParams < Phoebe::Internal::Type::BaseModel
            extend Phoebe::Internal::Type::RequestParameters::Converter
            include Phoebe::Internal::Type::RequestParameters

            # @!attribute region_code
            #
            #   @return [String]
            required :region_code, String

            # @!attribute y_
            #
            #   @return [Integer]
            required :y_, Integer

            # @!attribute m
            #
            #   @return [Integer]
            required :m, Integer

            # @!attribute cat
            #   Only fetch observations from these taxonomic categories
            #
            #   @return [Symbol, Phoebe::Data::Observations::Recent::HistoricListParams::Cat, nil]
            optional :cat, enum: -> { Phoebe::Data::Observations::Recent::HistoricListParams::Cat }

            # @!attribute detail
            #   Include a subset (simple), or all (full), of the fields available.
            #
            #   @return [Symbol, Phoebe::Data::Observations::Recent::HistoricListParams::Detail, nil]
            optional :detail, enum: -> { Phoebe::Data::Observations::Recent::HistoricListParams::Detail }

            # @!attribute hotspot
            #   Only fetch observations from hotspots
            #
            #   @return [Boolean, nil]
            optional :hotspot, Phoebe::Internal::Type::Boolean

            # @!attribute include_provisional
            #   Include observations which have not yet been reviewed.
            #
            #   @return [Boolean, nil]
            optional :include_provisional, Phoebe::Internal::Type::Boolean

            # @!attribute max_results
            #   Only fetch this number of observations
            #
            #   @return [Integer, nil]
            optional :max_results, Integer

            # @!attribute r
            #   Fetch observations from up to 50 locations
            #
            #   @return [Array<String>, nil]
            optional :r, Phoebe::Internal::Type::ArrayOf[String]

            # @!attribute rank
            #   Include latest observation of the day, or the first added
            #
            #   @return [Symbol, Phoebe::Data::Observations::Recent::HistoricListParams::Rank, nil]
            optional :rank, enum: -> { Phoebe::Data::Observations::Recent::HistoricListParams::Rank }

            # @!attribute spp_locale
            #   Use this language for species common names
            #
            #   @return [String, nil]
            optional :spp_locale, String

            # @!method initialize(region_code:, y_:, m:, cat: nil, detail: nil, hotspot: nil, include_provisional: nil, max_results: nil, r: nil, rank: nil, spp_locale: nil, request_options: {})
            #   @param region_code [String]
            #
            #   @param y_ [Integer]
            #
            #   @param m [Integer]
            #
            #   @param cat [Symbol, Phoebe::Data::Observations::Recent::HistoricListParams::Cat] Only fetch observations from these taxonomic categories
            #
            #   @param detail [Symbol, Phoebe::Data::Observations::Recent::HistoricListParams::Detail] Include a subset (simple), or all (full), of the fields available.
            #
            #   @param hotspot [Boolean] Only fetch observations from hotspots
            #
            #   @param include_provisional [Boolean] Include observations which have not yet been reviewed.
            #
            #   @param max_results [Integer] Only fetch this number of observations
            #
            #   @param r [Array<String>] Fetch observations from up to 50 locations
            #
            #   @param rank [Symbol, Phoebe::Data::Observations::Recent::HistoricListParams::Rank] Include latest observation of the day, or the first added
            #
            #   @param spp_locale [String] Use this language for species common names
            #
            #   @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}]

            # Only fetch observations from these taxonomic categories
            module Cat
              extend Phoebe::Internal::Type::Enum

              SPECIES = :species
              SLASH = :slash
              ISSF = :issf
              SPUH = :spuh
              HYBRID = :hybrid
              DOMESTIC = :domestic
              FORM = :form
              INTERGRADE = :intergrade

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Include a subset (simple), or all (full), of the fields available.
            module Detail
              extend Phoebe::Internal::Type::Enum

              SIMPLE = :simple
              FULL = :full

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Include latest observation of the day, or the first added
            module Rank
              extend Phoebe::Internal::Type::Enum

              MREC = :mrec
              CREATE = :create

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
