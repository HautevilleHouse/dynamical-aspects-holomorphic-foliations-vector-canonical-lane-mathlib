import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean.BridgeLemmas
import DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

def ConstrainedHolomorphicFoliationsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_holomorphic_foliations_endgame (A : AdmissibleClass) :
    ConstrainedHolomorphicFoliationsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse