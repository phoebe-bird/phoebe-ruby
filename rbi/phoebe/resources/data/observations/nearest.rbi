# typed: strong

module Phoebe
  module Resources
    class Data
      class Observations
        class Nearest
          sig do
            returns(Phoebe::Resources::Data::Observations::Nearest::GeoSpecies)
          end
          attr_reader :geo_species

          # @api private
          sig { params(client: Phoebe::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
