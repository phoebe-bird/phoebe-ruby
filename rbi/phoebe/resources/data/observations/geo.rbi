# typed: strong

module Phoebe
  module Resources
    class Data
      class Observations
        class Geo
          sig { returns(Phoebe::Resources::Data::Observations::Geo::Recent) }
          attr_reader :recent

          # @api private
          sig { params(client: Phoebe::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
