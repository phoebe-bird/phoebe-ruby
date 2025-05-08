# frozen_string_literal: true

module Phoebe
  module Models
    module Data
      module Observations
        module Geo
          # @type [Phoebe::Internal::Type::Converter]
          RecentListResponse = Phoebe::Internal::Type::ArrayOf[-> { Phoebe::Data::Observation }]
        end
      end
    end
  end
end
