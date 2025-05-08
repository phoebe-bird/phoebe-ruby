# typed: strong

module Phoebe
  module Models
    module Data
      module Observations
        module Geo
          module Recent
            NotableListResponse =
              T.let(
                Phoebe::Internal::Type::ArrayOf[Phoebe::Data::Observation],
                Phoebe::Internal::Type::Converter
              )
          end
        end
      end
    end
  end
end
