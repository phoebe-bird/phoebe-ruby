# frozen_string_literal: true

module Phoebe
  module Resources
    class Data
      class Observations
        # @return [Phoebe::Resources::Data::Observations::Recent]
        attr_reader :recent

        # @return [Phoebe::Resources::Data::Observations::Geo]
        attr_reader :geo

        # @return [Phoebe::Resources::Data::Observations::Nearest]
        attr_reader :nearest

        # @api private
        #
        # @param client [Phoebe::Client]
        def initialize(client:)
          @client = client
          @recent = Phoebe::Resources::Data::Observations::Recent.new(client: client)
          @geo = Phoebe::Resources::Data::Observations::Geo.new(client: client)
          @nearest = Phoebe::Resources::Data::Observations::Nearest.new(client: client)
        end
      end
    end
  end
end
