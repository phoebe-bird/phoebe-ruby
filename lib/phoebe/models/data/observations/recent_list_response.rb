# frozen_string_literal: true

module Phoebe
  module Models
    module Data
      module Observations
        # @type [Phoebe::Internal::Type::Converter]
        RecentListResponse = Phoebe::Internal::Type::ArrayOf[-> { Phoebe::Data::Observation }]
      end
    end
  end
end
