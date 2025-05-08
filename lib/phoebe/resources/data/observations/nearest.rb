# frozen_string_literal: true

module Phoebe
  module Resources
    class Data
      class Observations
        class Nearest
          # @return [Phoebe::Resources::Data::Observations::Nearest::GeoSpecies]
          attr_reader :geo_species

          # @api private
          #
          # @param client [Phoebe::Client]
          def initialize(client:)
            @client = client
            @geo_species = Phoebe::Resources::Data::Observations::Nearest::GeoSpecies.new(client: client)
          end
        end
      end
    end
  end
end
