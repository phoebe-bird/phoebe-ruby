# typed: strong

module Phoebe
  module Models
    module Product
      module Lists
        class HistoricalRetrieveParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Phoebe::Product::Lists::HistoricalRetrieveParams,
                Phoebe::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :region_code

          sig { returns(Integer) }
          attr_accessor :y_

          sig { returns(Integer) }
          attr_accessor :m

          # Only fetch this number of checklists.
          sig { returns(T.nilable(Integer)) }
          attr_reader :max_results

          sig { params(max_results: Integer).void }
          attr_writer :max_results

          # Order the results by the date of the checklist or by the date it was submitted.
          sig do
            returns(
              T.nilable(
                Phoebe::Product::Lists::HistoricalRetrieveParams::SortKey::OrSymbol
              )
            )
          end
          attr_reader :sort_key

          sig do
            params(
              sort_key:
                Phoebe::Product::Lists::HistoricalRetrieveParams::SortKey::OrSymbol
            ).void
          end
          attr_writer :sort_key

          sig do
            params(
              region_code: String,
              y_: Integer,
              m: Integer,
              max_results: Integer,
              sort_key:
                Phoebe::Product::Lists::HistoricalRetrieveParams::SortKey::OrSymbol,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            region_code:,
            y_:,
            m:,
            # Only fetch this number of checklists.
            max_results: nil,
            # Order the results by the date of the checklist or by the date it was submitted.
            sort_key: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                region_code: String,
                y_: Integer,
                m: Integer,
                max_results: Integer,
                sort_key:
                  Phoebe::Product::Lists::HistoricalRetrieveParams::SortKey::OrSymbol,
                request_options: Phoebe::RequestOptions
              }
            )
          end
          def to_hash
          end

          # Order the results by the date of the checklist or by the date it was submitted.
          module SortKey
            extend Phoebe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Phoebe::Product::Lists::HistoricalRetrieveParams::SortKey
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OBS_DT =
              T.let(
                :obs_dt,
                Phoebe::Product::Lists::HistoricalRetrieveParams::SortKey::TaggedSymbol
              )
            CREATION_DT =
              T.let(
                :creation_dt,
                Phoebe::Product::Lists::HistoricalRetrieveParams::SortKey::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Phoebe::Product::Lists::HistoricalRetrieveParams::SortKey::TaggedSymbol
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
