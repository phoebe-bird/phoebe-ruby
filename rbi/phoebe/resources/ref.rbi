# typed: strong

module Phoebe
  module Resources
    class Ref
      sig { returns(Phoebe::Resources::Ref::Region) }
      attr_reader :region

      sig { returns(Phoebe::Resources::Ref::Hotspot) }
      attr_reader :hotspot

      sig { returns(Phoebe::Resources::Ref::Taxonomy) }
      attr_reader :taxonomy

      # @api private
      sig { params(client: Phoebe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
