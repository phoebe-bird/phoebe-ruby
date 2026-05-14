# typed: strong

module Phoebe
  module Resources
    class Ref
      class Region
        # With the ref/geo end-point you can find a country's or region's neighbours.
        sig { returns(Phoebe::Resources::Ref::Region::Adjacent) }
        attr_reader :adjacent

        # The ref/region end-points return information on regions.
        sig { returns(Phoebe::Resources::Ref::Region::Info) }
        attr_reader :info

        # The ref/region end-points return information on regions.
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
