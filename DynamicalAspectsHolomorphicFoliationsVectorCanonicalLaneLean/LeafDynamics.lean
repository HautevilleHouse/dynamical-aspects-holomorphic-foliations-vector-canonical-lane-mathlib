import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean.HolomorphicFoliation

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

structure LeafDynamicsPackage {F : HolomorphicFoliationPackage} (F' : HolomorphicFoliationPackage) where
  leafLimitSet : Prop
  leafRecurrence : Prop
  leafClosureClassified : Prop
  uniformizationPossible : Prop

structure LeafDynamicsEvidence {F : HolomorphicFoliationPackage} {F' : HolomorphicFoliationPackage}
    (L : LeafDynamicsPackage F') where
  leafLimitSetClosed : L.leafLimitSet
  leafRecurrenceClosed : L.leafRecurrence
  leafClosureClassifiedClosed : L.leafClosureClassified
  uniformizationPossibleClosed : L.uniformizationPossible

def LeafDynamicsClosed {F : HolomorphicFoliationPackage} {F' : HolomorphicFoliationPackage}
    (L : LeafDynamicsPackage F') : Prop :=
  L.leafLimitSet ∧ L.leafRecurrence ∧ L.leafClosureClassified ∧ L.uniformizationPossible

theorem leaf_dynamics_closed_from_evidence {F : HolomorphicFoliationPackage} {F' : HolomorphicFoliationPackage}
    (L : LeafDynamicsPackage F') (E : LeafDynamicsEvidence L) : LeafDynamicsClosed L :=
  And.intro E.leafLimitSetClosed (And.intro E.leafRecurrenceClosed (And.intro E.leafClosureClassifiedClosed E.uniformizationPossibleClosed))

end HautevilleHouse.DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean