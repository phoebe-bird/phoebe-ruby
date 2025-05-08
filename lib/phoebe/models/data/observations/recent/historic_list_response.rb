# frozen_string_literal: true

module Phoebe
  module Models
    module Data
      module Observations
        module Recent
          # @type [Phoebe::Internal::Type::Converter]
          HistoricListResponse = Phoebe::Internal::Type::ArrayOf[-> { Phoebe::Data::Observation }]
        end
      end
    end
  end
end
