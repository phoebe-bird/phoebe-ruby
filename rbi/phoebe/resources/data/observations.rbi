# typed: strong

module Phoebe
  module Resources
    class Data
      class Observations
        # The data/obs end-points are used to fetch observations submitted to eBird in
        # checklists. There are two categories of end-point: 1. Fetch observations for a
        # specific country, region or location. 2. Fetch observations for nearby
        # locations - up to a distance of 50km. Each end-point supports optional query
        # parameters which allow you to filter the list of observations returned.
        sig { returns(Phoebe::Resources::Data::Observations::Recent) }
        attr_reader :recent

        sig { returns(Phoebe::Resources::Data::Observations::Geo) }
        attr_reader :geo

        sig { returns(Phoebe::Resources::Data::Observations::Nearest) }
        attr_reader :nearest

        # @api private
        sig { params(client: Phoebe::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
