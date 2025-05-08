# frozen_string_literal: true

module Phoebe
  module Resources
    class Data
      # @return [Phoebe::Resources::Data::Observations]
      attr_reader :observations

      # @api private
      #
      # @param client [Phoebe::Client]
      def initialize(client:)
        @client = client
        @observations = Phoebe::Resources::Data::Observations.new(client: client)
      end
    end
  end
end
