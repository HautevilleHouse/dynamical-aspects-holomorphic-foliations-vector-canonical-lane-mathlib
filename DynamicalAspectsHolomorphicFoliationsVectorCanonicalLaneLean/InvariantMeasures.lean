import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean.HolomorphicFoliation

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

/-!
# Invariant Measures Package

Transverse invariant measures for holomorphic foliations.
-/

structure InvariantMeasuresPackage (F : HolomorphicFoliationPackage) where
  transverseMeasure : TransverseMeasure F.foliationStructure
  invarianceUnderHolonomy : HolonomyInvariantCondition transverseMeasure
  support : Set (F.manifold M)

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse