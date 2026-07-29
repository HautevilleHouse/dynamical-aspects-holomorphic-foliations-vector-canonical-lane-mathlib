import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

structure HolomorphicFoliation (M : Type) [TopologicalSpace M] [ComplexManifold M] where
  leaves : Set (Set M)
  leafDimension : ℕ
  codimension : ℕ
  holomorphicStructure : Prop
  integrabilityCondition : Prop
  leafDimensionTerm : leafDimension = 1
  codimensionTerm : codimension = 1
  holomorphicStructureTerm : holomorphicStructure
  integrabilityConditionTerm : integrabilityCondition

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse
