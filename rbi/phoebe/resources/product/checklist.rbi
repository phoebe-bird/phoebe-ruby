# typed: strong

module Phoebe
  module Resources
    class Product
      # The product end-points make it easy to get the information shown in various
      # pages on the eBird web site: 1. The Top 100 contributors on a given date. 2. The
      # checklists submitted on a given date. 3. The most recent checklists
      # submitted. 4. A summary of the checklists submitted on a given date. 5. The
      # details and all the observations of a checklist.
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
