# frozen_string_literal: true

module Phoebe
  module Models
    module Ref
      module Taxonomy
        # @see Phoebe::Resources::Ref::Taxonomy::Ebird#retrieve
        class EbirdRetrieveParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          # @!attribute cat
          #   Only fetch records from these taxonomic categories.
          #
          #   @return [String, nil]
          optional :cat, String

          # @!attribute fmt
          #   Fetch the records in CSV or JSON format.
          #
          #   @return [Symbol, Phoebe::Ref::Taxonomy::EbirdRetrieveParams::Fmt, nil]
          optional :fmt, enum: -> { Phoebe::Ref::Taxonomy::EbirdRetrieveParams::Fmt }

          # @!attribute locale
          #   Use this language for common names.
          #
          #   @return [String, nil]
          optional :locale, String

          # @!attribute species
          #   Only fetch records for these species.
          #
          #   @return [String, nil]
          optional :species, String

          # @!attribute version
          #   Fetch a specific version of the taxonomy.
          #
          #   @return [String, nil]
          optional :version, String

          # @!method initialize(cat: nil, fmt: nil, locale: nil, species: nil, version: nil, request_options: {})
          #   @param cat [String] Only fetch records from these taxonomic categories.
          #
          #   @param fmt [Symbol, Phoebe::Ref::Taxonomy::EbirdRetrieveParams::Fmt] Fetch the records in CSV or JSON format.
          #
          #   @param locale [String] Use this language for common names.
          #
          #   @param species [String] Only fetch records for these species.
          #
          #   @param version [String] Fetch a specific version of the taxonomy.
          #
          #   @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}]

          # Fetch the records in CSV or JSON format.
          module Fmt
            extend Phoebe::Internal::Type::Enum

            CSV = :csv
            JSON = :json

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
