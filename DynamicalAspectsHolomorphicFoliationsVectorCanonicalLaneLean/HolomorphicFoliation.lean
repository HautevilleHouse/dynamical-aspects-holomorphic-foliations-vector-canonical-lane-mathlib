import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

/-!
# Holomorphic Foliation Package

This structure models a holomorphic foliation on a complex manifold, explicitizing the foliation data.
-/

structure HolomorphicFoliationPackage where
  manifold (M : Type u) [TopologicalSpace M] [ComplexManifold M] : Prop
  leaf : Type v
  foliationStructure : M → Set leaf
  holomorphicStructure : (ComplexStructure M) ∧ (SubmersionProperty foliationStructure)
  singularSet : Set M
  singularSetAnalytic : AnalyticalSet singularSet
  transversalHolonomy : Prop

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse