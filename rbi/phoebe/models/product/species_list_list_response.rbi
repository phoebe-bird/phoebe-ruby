# typed: strong

module Phoebe
  module Models
    module Product
      SpeciesListListResponse =
        T.let(
          Phoebe::Internal::Type::ArrayOf[String],
          Phoebe::Internal::Type::Converter
        )
    end
  end
end
