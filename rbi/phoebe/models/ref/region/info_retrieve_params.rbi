# typed: strong

module Phoebe
  module Models
    module Ref
      module Region
        class InfoRetrieveParams < Phoebe::Internal::Type::BaseModel
          extend Phoebe::Internal::Type::RequestParameters::Converter
          include Phoebe::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Phoebe::Ref::Region::InfoRetrieveParams,
                Phoebe::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :region_code

          # The characters used to separate elements in the name.
          sig { returns(T.nilable(String)) }
          attr_reader :delim

          sig { params(delim: String).void }
          attr_writer :delim

          # Control how the name is displayed.
          sig do
            returns(
              T.nilable(
                Phoebe::Ref::Region::InfoRetrieveParams::RegionNameFormat::OrSymbol
              )
            )
          end
          attr_reader :region_name_format

          sig do
            params(
              region_name_format:
                Phoebe::Ref::Region::InfoRetrieveParams::RegionNameFormat::OrSymbol
            ).void
          end
          attr_writer :region_name_format

          sig do
            params(
              region_code: String,
              delim: String,
              region_name_format:
                Phoebe::Ref::Region::InfoRetrieveParams::RegionNameFormat::OrSymbol,
              request_options: Phoebe::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            region_code:,
            # The characters used to separate elements in the name.
            delim: nil,
            # Control how the name is displayed.
            region_name_format: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                region_code: String,
                delim: String,
                region_name_format:
                  Phoebe::Ref::Region::InfoRetrieveParams::RegionNameFormat::OrSymbol,
                request_options: Phoebe::RequestOptions
              }
            )
          end
          def to_hash
          end

          # Control how the name is displayed.
          module RegionNameFormat
            extend Phoebe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Phoebe::Ref::Region::InfoRetrieveParams::RegionNameFormat
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DETAILED =
              T.let(
                :detailed,
                Phoebe::Ref::Region::InfoRetrieveParams::RegionNameFormat::TaggedSymbol
              )
            DETAILEDNOQUAL =
              T.let(
                :detailednoqual,
                Phoebe::Ref::Region::InfoRetrieveParams::RegionNameFormat::TaggedSymbol
              )
            FULL =
              T.let(
                :full,
                Phoebe::Ref::Region::InfoRetrieveParams::RegionNameFormat::TaggedSymbol
              )
            NAMEQUAL =
              T.let(
                :namequal,
                Phoebe::Ref::Region::InfoRetrieveParams::RegionNameFormat::TaggedSymbol
              )
            NAMEONLY =
              T.let(
                :nameonly,
                Phoebe::Ref::Region::InfoRetrieveParams::RegionNameFormat::TaggedSymbol
              )
            REVDETAILED =
              T.let(
                :revdetailed,
                Phoebe::Ref::Region::InfoRetrieveParams::RegionNameFormat::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Phoebe::Ref::Region::InfoRetrieveParams::RegionNameFormat::TaggedSymbol
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
