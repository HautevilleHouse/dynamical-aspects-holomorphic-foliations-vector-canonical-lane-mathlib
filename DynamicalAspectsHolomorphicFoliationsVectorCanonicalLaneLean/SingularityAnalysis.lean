import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean.HolomorphicFoliation

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

/-!
# Singularity Analysis Package

Analysis of singularities of holomorphic foliations, including separatrices and reduction.
-/

structure SingularityAnalysisPackage (F : HolomorphicFoliationPackage) where
  singularPoints : Set (F.manifold M)
  separatrices : (x : singularPoints) → Set (F.manifold M)
  reductionBlowup : BlowupStructure singularPoints
  sepAnalysisPerPoint : (x : singularPoints) → Prop

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse