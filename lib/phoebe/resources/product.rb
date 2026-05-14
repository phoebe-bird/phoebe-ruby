# frozen_string_literal: true

module Phoebe
  module Resources
    class Product
      # The data/obs end-points are used to fetch observations submitted to eBird in
      # checklists. There are two categories of end-point: 1. Fetch observations for a
      # specific country, region or location. 2. Fetch observations for nearby
      # locations - up to a distance of 50km. Each end-point supports optional query
      # parameters which allow you to filter the list of observations returned.
      # @return [Phoebe::Resources::Product::Lists]
      attr_reader :lists

      # The product end-points make it easy to get the information shown in various
      # pages on the eBird web site: 1. The Top 100 contributors on a given date. 2. The
      # checklists submitted on a given date. 3. The most recent checklists
      # submitted. 4. A summary of the checklists submitted on a given date. 5. The
      # details and all the observations of a checklist.
      # @return [Phoebe::Resources::Product::Top100]
      attr_reader :top100

      # The product end-points make it easy to get the information shown in various
      # pages on the eBird web site: 1. The Top 100 contributors on a given date. 2. The
      # checklists submitted on a given date. 3. The most recent checklists
      # submitted. 4. A summary of the checklists submitted on a given date. 5. The
      # details and all the observations of a checklist.
      # @return [Phoebe::Resources::Product::Stats]
      attr_reader :stats

      # The product end-points make it easy to get the information shown in various
      # pages on the eBird web site: 1. The Top 100 contributors on a given date. 2. The
      # checklists submitted on a given date. 3. The most recent checklists
      # submitted. 4. A summary of the checklists submitted on a given date. 5. The
      # details and all the observations of a checklist.
      # @return [Phoebe::Resources::Product::SpeciesList]
      attr_reader :species_list

      # The product end-points make it easy to get the information shown in various
      # pages on the eBird web site: 1. The Top 100 contributors on a given date. 2. The
      # checklists submitted on a given date. 3. The most recent checklists
      # submitted. 4. A summary of the checklists submitted on a given date. 5. The
      # details and all the observations of a checklist.
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
