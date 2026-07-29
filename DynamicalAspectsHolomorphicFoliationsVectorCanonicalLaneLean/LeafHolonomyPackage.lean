import DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean.HolomorphicFoliationsAdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

structure LeafHolonomyPackage (A : HolomorphicFoliationsAdmissibleObject) where
  leafSpace : Type u
  holonomyGroup : Type v
  holonomyRepresentation : leafSpace → holonomyGroup
  holonomyGrowthControl : Prop
  unipotentFlattening : Prop
  sourceFibrationCompatible : Prop

structure LeafHolonomyEvidence {A : HolomorphicFoliationsAdmissibleObject} (L : LeafHolonomyPackage A) where
  holonomyGrowthControlClosed : L.holonomyGrowthControl
  unipotentFlatteningClosed : L.unipotentFlattening
  sourceFibrationCompatibleClosed : L.sourceFibrationCompatible

def LeafHolonomyClosed {A : HolomorphicFoliationsAdmissibleObject} (L : LeafHolonomyPackage A) : Prop :=
  L.holonomyGrowthControl ∧ L.unipotentFlattening ∧ L.sourceFibrationCompatible

theorem leaf_holonomy_closed_from_evidence
    {A : HolomorphicFoliationsAdmissibleObject} (L : LeafHolonomyPackage A)
    (E : LeafHolonomyEvidence L) : LeafHolonomyClosed L := by
  exact And.intro E.holonomyGrowthControlClosed
    (And.intro E.unipotentFlatteningClosed E.sourceFibrationCompatibleClosed)

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse
