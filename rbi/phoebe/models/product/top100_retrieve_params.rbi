# typed: strong

module Phoebe
  module Models
    module Product
      class Top100RetrieveParams < Phoebe::Internal::Type::BaseModel
        extend Phoebe::Internal::Type::RequestParameters::Converter
        include Phoebe::Internal::Type::RequestParameters

        OrHash = T.type_alias { T.any(T.self_type, Phoebe::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :region_code

        sig { returns(Integer) }
        attr_accessor :y_

        sig { returns(Integer) }
        attr_accessor :m

        # Only fetch this number of contributors.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_results

        sig { params(max_results: Integer).void }
        attr_writer :max_results

        # Order by number of complete checklists (cl) or by number of species seen (spp).
        sig do
          returns(
            T.nilable(Phoebe::Product::Top100RetrieveParams::RankedBy::OrSymbol)
          )
        end
        attr_reader :ranked_by

        sig do
          params(
            ranked_by: Phoebe::Product::Top100RetrieveParams::RankedBy::OrSymbol
          ).void
        end
        attr_writer :ranked_by

        sig do
          params(
            region_code: String,
            y_: Integer,
            m: Integer,
            max_results: Integer,
            ranked_by:
              Phoebe::Product::Top100RetrieveParams::RankedBy::OrSymbol,
            request_options: Phoebe::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          region_code:,
          y_:,
          m:,
          # Only fetch this number of contributors.
          max_results: nil,
          # Order by number of complete checklists (cl) or by number of species seen (spp).
          ranked_by: nil,
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
              ranked_by:
                Phoebe::Product::Top100RetrieveParams::RankedBy::OrSymbol,
              request_options: Phoebe::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Order by number of complete checklists (cl) or by number of species seen (spp).
        module RankedBy
          extend Phoebe::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Phoebe::Product::Top100RetrieveParams::RankedBy)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SPP =
            T.let(
              :spp,
              Phoebe::Product::Top100RetrieveParams::RankedBy::TaggedSymbol
            )
          CL =
            T.let(
              :cl,
              Phoebe::Product::Top100RetrieveParams::RankedBy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Phoebe::Product::Top100RetrieveParams::RankedBy::TaggedSymbol
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
