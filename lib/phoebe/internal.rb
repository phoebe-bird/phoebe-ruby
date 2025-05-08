# frozen_string_literal: true

module Phoebe
  module Internal
    OMIT =
      Object.new.tap do
        _1.define_singleton_method(:inspect) { "#<#{Phoebe::Internal}::OMIT>" }
      end
        .freeze
  end
end
