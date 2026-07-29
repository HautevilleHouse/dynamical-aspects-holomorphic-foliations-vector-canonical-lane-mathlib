import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∃ (M : Type) [TopologicalSpace M] [ComplexManifold M],
    let F : HolomorphicFoliation M := A.object in
    F.holomorphicStructure ∧ F.integrabilityCondition

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  refine Exists.intro A.object ?_
  exact A.object.conclusion

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse
