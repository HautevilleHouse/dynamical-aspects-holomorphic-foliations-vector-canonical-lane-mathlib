import DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean.HolomorphicFoliationsAdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

structure MeromorphicConnectionPackage (A : HolomorphicFoliationsAdmissibleObject) where
  connectionForm : Type u
  polesSet : Type v
  residueDynamics : Type w
  integrabilityCondition : Prop
  poleOrderControl : Prop
  leafParallelTransport : Prop

structure MeromorphicConnectionEvidence {A : HolomorphicFoliationsAdmissibleObject}
    (M : MeromorphicConnectionPackage A) where
  integrabilityConditionClosed : M.integrabilityCondition
  poleOrderControlClosed : M.poleOrderControl
  leafParallelTransportClosed : M.leafParallelTransport

def MeromorphicConnectionClosed {A : HolomorphicFoliationsAdmissibleObject}
    (M : MeromorphicConnectionPackage A) : Prop :=
  M.integrabilityCondition ∧ M.poleOrderControl ∧ M.leafParallelTransport

theorem meromorphic_connection_closed_from_evidence
    {A : HolomorphicFoliationsAdmissibleObject}
    (M : MeromorphicConnectionPackage A) (E : MeromorphicConnectionEvidence M) :
    MeromorphicConnectionClosed M := by
  exact And.intro E.integrabilityConditionClosed
    (And.intro E.poleOrderControlClosed E.leafParallelTransportClosed)

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse
