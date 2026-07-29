import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean.HolomorphicFoliation

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

/-!
# Holonomy Group Package

Holonomy groups of leaves in holomorphic foliations.
-/

structure HolonomyGroupPackage (F : HolomorphicFoliationPackage) where
  leaf (x : F.manifold M) : Set (F.manifold M)
  holonomyGroup (x : F.manifold M) : Type w
  holonomyRep : HolonomyRepresentation holonomyGroup
  germEquivalence : GermEquivalenceCondition holonomyRep

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse