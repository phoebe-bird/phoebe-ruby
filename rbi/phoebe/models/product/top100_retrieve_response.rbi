# typed: strong

module Phoebe
  module Models
    module Product
      class Top100RetrieveResponseItem < Phoebe::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(T.self_type, Phoebe::Internal::AnyHash) }

        sig { returns(T.nilable(Integer)) }
        attr_reader :num_complete_checklists

        sig { params(num_complete_checklists: Integer).void }
        attr_writer :num_complete_checklists

        sig { returns(T.nilable(Integer)) }
        attr_reader :num_species

        sig { params(num_species: Integer).void }
        attr_writer :num_species

        sig { returns(T.nilable(String)) }
        attr_reader :profile_handle

        sig { params(profile_handle: String).void }
        attr_writer :profile_handle

        sig { returns(T.nilable(Integer)) }
        attr_reader :row_num

        sig { params(row_num: Integer).void }
        attr_writer :row_num

        sig { returns(T.nilable(String)) }
        attr_reader :user_display_name

        sig { params(user_display_name: String).void }
        attr_writer :user_display_name

        sig { returns(T.nilable(String)) }
        attr_reader :user_id

        sig { params(user_id: String).void }
        attr_writer :user_id

        sig do
          params(
            num_complete_checklists: Integer,
            num_species: Integer,
            profile_handle: String,
            row_num: Integer,
            user_display_name: String,
            user_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          num_complete_checklists: nil,
          num_species: nil,
          profile_handle: nil,
          row_num: nil,
          user_display_name: nil,
          user_id: nil
        )
        end

        sig do
          override.returns(
            {
              num_complete_checklists: Integer,
              num_species: Integer,
              profile_handle: String,
              row_num: Integer,
              user_display_name: String,
              user_id: String
            }
          )
        end
        def to_hash
        end
      end

      Top100RetrieveResponse =
        T.let(
          Phoebe::Internal::Type::ArrayOf[
            Phoebe::Models::Product::Top100RetrieveResponseItem
          ],
          Phoebe::Internal::Type::Converter
        )
    end
  end
end
