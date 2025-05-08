# typed: strong

module Phoebe
  module Resources
    class Product
      sig { returns(Phoebe::Resources::Product::Lists) }
      attr_reader :lists

      sig { returns(Phoebe::Resources::Product::Top100) }
      attr_reader :top100

      sig { returns(Phoebe::Resources::Product::Stats) }
      attr_reader :stats

      sig { returns(Phoebe::Resources::Product::SpeciesList) }
      attr_reader :species_list

      sig { returns(Phoebe::Resources::Product::Checklist) }
      attr_reader :checklist

      # @api private
      sig { params(client: Phoebe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
