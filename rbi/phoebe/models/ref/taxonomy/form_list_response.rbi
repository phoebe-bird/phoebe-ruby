# typed: strong

module Phoebe
  module Models
    module Ref
      module Taxonomy
        FormListResponse =
          T.let(
            Phoebe::Internal::Type::ArrayOf[String],
            Phoebe::Internal::Type::Converter
          )
      end
    end
  end
end
