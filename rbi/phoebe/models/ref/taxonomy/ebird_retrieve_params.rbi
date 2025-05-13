# typed: strong

module Phoebe
  module Models
    module Ref
      module Taxonomy
        class EbirdRetrieveParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Phoebe::Ref::Taxonomy::EbirdRetrieveParams,
                Phoebe::Internal::AnyHash
              )
            end

          # Only fetch records from these taxonomic categories.
          sig { returns(T.nilable(String)) }
          attr_reader :cat

          sig { params(cat: String).void }
          attr_writer :cat

          # Fetch the records in CSV or JSON format.
          sig do
            returns(
              T.nilable(
                Phoebe::Ref::Taxonomy::EbirdRetrieveParams::Fmt::OrSymbol
              )
            )
          end
          attr_reader :fmt

          sig do
            params(
              fmt: Phoebe::Ref::Taxonomy::EbirdRetrieveParams::Fmt::OrSymbol
            ).void
          end
          attr_writer :fmt

          # Use this language for common names.
          sig { returns(T.nilable(String)) }
          attr_reader :locale

          sig { params(locale: String).void }
          attr_writer :locale

          # Only fetch records for these species.
          sig { returns(T.nilable(String)) }
          attr_reader :species

          sig { params(species: String).void }
          attr_writer :species

          # Fetch a specific version of the taxonomy.
          sig { returns(T.nilable(String)) }
          attr_reader :version

          sig { params(version: String).void }
          attr_writer :version

          sig do
            params(
              cat: String,
              fmt: Phoebe::Ref::Taxonomy::EbirdRetrieveParams::Fmt::OrSymbol,
              locale: String,
              species: String,
              version: String,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Only fetch records from these taxonomic categories.
            cat: nil,
            # Fetch the records in CSV or JSON format.
            fmt: nil,
            # Use this language for common names.
            locale: nil,
            # Only fetch records for these species.
            species: nil,
            # Fetch a specific version of the taxonomy.
            version: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                cat: String,
                fmt: Phoebe::Ref::Taxonomy::EbirdRetrieveParams::Fmt::OrSymbol,
                locale: String,
                species: String,
                version: String,
                request_options: Phoebe::RequestOptions
              }
            )
          end
          def to_hash
          end

          # Fetch the records in CSV or JSON format.
          module Fmt
            extend Phoebe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Phoebe::Ref::Taxonomy::EbirdRetrieveParams::Fmt)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CSV =
              T.let(
                :csv,
                Phoebe::Ref::Taxonomy::EbirdRetrieveParams::Fmt::TaggedSymbol
              )
            JSON =
              T.let(
                :json,
                Phoebe::Ref::Taxonomy::EbirdRetrieveParams::Fmt::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Phoebe::Ref::Taxonomy::EbirdRetrieveParams::Fmt::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
