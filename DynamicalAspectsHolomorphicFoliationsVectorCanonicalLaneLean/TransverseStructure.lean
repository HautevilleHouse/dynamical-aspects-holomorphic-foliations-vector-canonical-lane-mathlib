import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean.HolomorphicFoliation

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

structure TransverseStructurePackage {F : HolomorphicFoliationPackage} (F' : HolomorphicFoliationPackage) where
  holonomyGroupoid : Type u
  transverseMetric : Prop
  pseudogroupAction : Prop
  transverseInvariantMeasure : Prop

structure TransverseStructureEvidence {F : HolomorphicFoliationPackage} {F' : HolomorphicFoliationPackage}
    (T : TransverseStructurePackage F') where
  holonomyGroupoidClosed : T.holonomyGroupoid
  transverseMetricClosed : T.transverseMetric
  pseudogroupActionClosed : T.pseudogroupAction
  transverseInvariantMeasureClosed : T.transverseInvariantMeasure

def TransverseStructureClosed {F : HolomorphicFoliationPackage} {F' : HolomorphicFoliationPackage}
    (T : TransverseStructurePackage F') : Prop :=
  T.holonomyGroupoid ∧ T.transverseMetric ∧ T.pseudogroupAction ∧ T.transverseInvariantMeasure

theorem transverse_structure_closed_from_evidence {F : HolomorphicFoliationPackage} {F' : HolomorphicFoliationPackage}
    (T : TransverseStructurePackage F') (E : TransverseStructureEvidence T) : TransverseStructureClosed T :=
  And.intro E.holonomyGroupoidClosed (And.intro E.transverseMetricClosed (And.intro E.pseudogroupActionClosed E.transverseInvariantMeasureClosed))

end HautevilleHouse.DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean