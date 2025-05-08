# frozen_string_literal: true

module Phoebe
  module Resources
    class Data
      class Observations
        class Geo
          # @return [Phoebe::Resources::Data::Observations::Geo::Recent]
          attr_reader :recent

          # @api private
          #
          # @param client [Phoebe::Client]
          def initialize(client:)
            @client = client
            @recent = Phoebe::Resources::Data::Observations::Geo::Recent.new(client: client)
          end
        end
      end
    end
  end
end
