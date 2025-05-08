# typed: strong

module Phoebe
  module Models
    module Ref
      module Taxonomy
        class EbirdRetrieveResponseItem < Phoebe::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, Phoebe::Internal::AnyHash) }

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :banding_codes

          sig { params(banding_codes: T::Array[String]).void }
          attr_writer :banding_codes

          sig { returns(T.nilable(String)) }
          attr_reader :category

          sig { params(category: String).void }
          attr_writer :category

          sig { returns(T.nilable(String)) }
          attr_reader :com_name

          sig { params(com_name: String).void }
          attr_writer :com_name

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :com_name_codes

          sig { params(com_name_codes: T::Array[String]).void }
          attr_writer :com_name_codes

          sig { returns(T.nilable(String)) }
          attr_reader :family_code

          sig { params(family_code: String).void }
          attr_writer :family_code

          sig { returns(T.nilable(String)) }
          attr_reader :family_com_name

          sig { params(family_com_name: String).void }
          attr_writer :family_com_name

          sig { returns(T.nilable(String)) }
          attr_reader :family_sci_name

          sig { params(family_sci_name: String).void }
          attr_writer :family_sci_name

          sig { returns(T.nilable(String)) }
          attr_reader :order

          sig { params(order: String).void }
          attr_writer :order

          sig { returns(T.nilable(String)) }
          attr_reader :sci_name

          sig { params(sci_name: String).void }
          attr_writer :sci_name

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :sci_name_codes

          sig { params(sci_name_codes: T::Array[String]).void }
          attr_writer :sci_name_codes

          sig { returns(T.nilable(String)) }
          attr_reader :species_code

          sig { params(species_code: String).void }
          attr_writer :species_code

          sig { returns(T.nilable(Integer)) }
          attr_reader :taxon_order

          sig { params(taxon_order: Integer).void }
          attr_writer :taxon_order

          sig do
            params(
              banding_codes: T::Array[String],
              category: String,
              com_name: String,
              com_name_codes: T::Array[String],
              family_code: String,
              family_com_name: String,
              family_sci_name: String,
              order: String,
              sci_name: String,
              sci_name_codes: T::Array[String],
              species_code: String,
              taxon_order: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            banding_codes: nil,
            category: nil,
            com_name: nil,
            com_name_codes: nil,
            family_code: nil,
            family_com_name: nil,
            family_sci_name: nil,
            order: nil,
            sci_name: nil,
            sci_name_codes: nil,
            species_code: nil,
            taxon_order: nil
          )
          end

          sig do
            override.returns(
              {
                banding_codes: T::Array[String],
                category: String,
                com_name: String,
                com_name_codes: T::Array[String],
                family_code: String,
                family_com_name: String,
                family_sci_name: String,
                order: String,
                sci_name: String,
                sci_name_codes: T::Array[String],
                species_code: String,
                taxon_order: Integer
              }
            )
          end
          def to_hash
          end
        end

        EbirdRetrieveResponse =
          T.let(
            Phoebe::Internal::Type::ArrayOf[
              Phoebe::Models::Ref::Taxonomy::EbirdRetrieveResponseItem
            ],
            Phoebe::Internal::Type::Converter
          )
      end
    end
  end
end
