import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean.HolomorphicFoliation

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

/-!
# Poincaré Return Map Package

Poincaré first return maps for holomorphic foliations.
-/

structure PoincareReturnPackage (F : HolomorphicFoliationPackage) where
  transversal (x : F.manifold M) : TransversalSection F.foliationStructure x
  returnMap (x : F.manifold M) : Automorphism (transversal x)
  analyticity : AnalyticityCondition (returnMap x)

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse