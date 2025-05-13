# typed: strong

module Phoebe
  module Models
    module Product
      class StatRetrieveResponse < Phoebe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Phoebe::Models::Product::StatRetrieveResponse,
              Phoebe::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :num_checklists

        sig { params(num_checklists: Integer).void }
        attr_writer :num_checklists

        sig { returns(T.nilable(Integer)) }
        attr_reader :num_contributors

        sig { params(num_contributors: Integer).void }
        attr_writer :num_contributors

        sig { returns(T.nilable(Integer)) }
        attr_reader :num_species

        sig { params(num_species: Integer).void }
        attr_writer :num_species

        sig do
          params(
            num_checklists: Integer,
            num_contributors: Integer,
            num_species: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          num_checklists: nil,
          num_contributors: nil,
          num_species: nil
        )
        end

        sig do
          override.returns(
            {
              num_checklists: Integer,
              num_contributors: Integer,
              num_species: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
