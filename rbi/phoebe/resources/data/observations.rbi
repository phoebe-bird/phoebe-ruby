# typed: strong

module Phoebe
  module Resources
    class Data
      class Observations
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
