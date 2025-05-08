# typed: strong

module Phoebe
  module Resources
    class Product
      class Checklist
        # Get the details and observations of a checklist.
        #
        # #### Notes Do NOT use this to download large amounts of data. You will be banned if you do. In the fields for each observation, the following fields are duplicates or obsolete and will be removed at a future date: _howManyAtleast_, _howManyAtmost_, _hideFlags_, _projId_, _subId_, _subnational1Code_ and _present_.
        sig do
          params(
            sub_id: String,
            request_options: Phoebe::RequestOptions::OrHash
          ).returns(Phoebe::Models::Product::ChecklistViewResponse)
        end
        def view(
          # The checklist identifier.
          sub_id,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Phoebe::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
