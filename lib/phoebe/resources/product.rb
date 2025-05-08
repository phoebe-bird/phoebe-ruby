# frozen_string_literal: true

module Phoebe
  module Resources
    class Product
      # @return [Phoebe::Resources::Product::Lists]
      attr_reader :lists

      # @return [Phoebe::Resources::Product::Top100]
      attr_reader :top100

      # @return [Phoebe::Resources::Product::Stats]
      attr_reader :stats

      # @return [Phoebe::Resources::Product::SpeciesList]
      attr_reader :species_list

      # @return [Phoebe::Resources::Product::Checklist]
      attr_reader :checklist

      # @api private
      #
      # @param client [Phoebe::Client]
      def initialize(client:)
        @client = client
        @lists = Phoebe::Resources::Product::Lists.new(client: client)
        @top100 = Phoebe::Resources::Product::Top100.new(client: client)
        @stats = Phoebe::Resources::Product::Stats.new(client: client)
        @species_list = Phoebe::Resources::Product::SpeciesList.new(client: client)
        @checklist = Phoebe::Resources::Product::Checklist.new(client: client)
      end
    end
  end
end
