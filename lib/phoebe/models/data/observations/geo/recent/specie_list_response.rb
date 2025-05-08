# frozen_string_literal: true

module Phoebe
  module Models
    module Data
      module Observations
        module Geo
          module Recent
            # @type [Phoebe::Internal::Type::Converter]
            SpecieListResponse = Phoebe::Internal::Type::ArrayOf[-> { Phoebe::Data::Observation }]
          end
        end
      end
    end
  end
end
