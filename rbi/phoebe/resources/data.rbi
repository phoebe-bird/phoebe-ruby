# typed: strong

module Phoebe
  module Resources
    class Data
      sig { returns(Phoebe::Resources::Data::Observations) }
      attr_reader :observations

      # @api private
      sig { params(client: Phoebe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
