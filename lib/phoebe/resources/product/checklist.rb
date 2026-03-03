# frozen_string_literal: true

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
        #
        # @overload view(sub_id, request_options: {})
        #
        # @param sub_id [String] The checklist identifier.
        #
        # @param request_options [Phoebe::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Phoebe::Models::Product::ChecklistViewResponse]
        #
        # @see Phoebe::Models::Product::ChecklistViewParams
        def view(sub_id, params = {})
          @client.request(
            method: :get,
            path: ["product/checklist/view/%1$s", sub_id],
            model: Phoebe::Models::Product::ChecklistViewResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Phoebe::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
