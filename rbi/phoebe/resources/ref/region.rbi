# typed: strong

module Phoebe
  module Resources
    class Ref
      class Region
        sig { returns(Phoebe::Resources::Ref::Region::Adjacent) }
        attr_reader :adjacent

        sig { returns(Phoebe::Resources::Ref::Region::Info) }
        attr_reader :info

        sig { returns(Phoebe::Resources::Ref::Region::List) }
        attr_reader :list

        # @api private
        sig { params(client: Phoebe::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
