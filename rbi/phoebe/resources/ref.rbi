# typed: strong

module Phoebe
  module Resources
    class Ref
      sig { returns(Phoebe::Resources::Ref::Region) }
      attr_reader :region

      # With the ref/hotspot end-points you can find the hotspots for a given country or
      # region or nearby hotspots
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
