# frozen_string_literal: true

module Phoebe
  module Resources
    class Ref
      # @return [Phoebe::Resources::Ref::Region]
      attr_reader :region

      # @return [Phoebe::Resources::Ref::Hotspot]
      attr_reader :hotspot

      # @return [Phoebe::Resources::Ref::Taxonomy]
      attr_reader :taxonomy

      # @api private
      #
      # @param client [Phoebe::Client]
      def initialize(client:)
        @client = client
        @region = Phoebe::Resources::Ref::Region.new(client: client)
        @hotspot = Phoebe::Resources::Ref::Hotspot.new(client: client)
        @taxonomy = Phoebe::Resources::Ref::Taxonomy.new(client: client)
      end
    end
  end
end
