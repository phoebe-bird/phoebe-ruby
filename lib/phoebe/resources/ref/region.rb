# frozen_string_literal: true

module Phoebe
  module Resources
    class Ref
      class Region
        # @return [Phoebe::Resources::Ref::Region::Adjacent]
        attr_reader :adjacent

        # @return [Phoebe::Resources::Ref::Region::Info]
        attr_reader :info

        # @return [Phoebe::Resources::Ref::Region::List]
        attr_reader :list

        # @api private
        #
        # @param client [Phoebe::Client]
        def initialize(client:)
          @client = client
          @adjacent = Phoebe::Resources::Ref::Region::Adjacent.new(client: client)
          @info = Phoebe::Resources::Ref::Region::Info.new(client: client)
          @list = Phoebe::Resources::Ref::Region::List.new(client: client)
        end
      end
    end
  end
end
