# frozen_string_literal: true

module Phoebe
  module Models
    module Data
      module Observations
        module Nearest
          # @type [Phoebe::Internal::Type::Converter]
          GeoSpecieListResponse = Phoebe::Internal::Type::ArrayOf[-> { Phoebe::Data::Observation }]
        end
      end
    end
  end
end
