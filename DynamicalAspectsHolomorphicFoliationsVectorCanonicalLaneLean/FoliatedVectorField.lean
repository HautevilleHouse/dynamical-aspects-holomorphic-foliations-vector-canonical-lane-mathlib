import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

structure FoliatedVectorFieldPackage (M : Type) [TopologicalSpace M] [ComplexManifold M] where
  foliation : HolomorphicFoliation M
  vectorField : M → TM
  tangentToFoliatedStructure : Prop
  holomorphicVectorField : Prop
  invariantLeaves : ∀ x : M, ∀ y : M, x ∈ foliation.leaves ∧ y ∈ foliation.leaves → vectorField x ∈ T_x(foliation.leaves) ∧ vectorField y ∈ T_y(foliation.leaves)
  tangentToFoliatedStructureTerm : tangentToFoliatedStructure
  holomorphicVectorFieldTerm : holomorphicVectorField

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse
