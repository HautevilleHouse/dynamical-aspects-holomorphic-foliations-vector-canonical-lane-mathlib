import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean.HolomorphicFoliation
import HautevilleHouse.DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean.TransverseStructure

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

structure ErgodicityRigidityPackage {F : HolomorphicFoliationPackage} {F' : HolomorphicFoliationPackage}
    (T : TransverseStructurePackage F') where
  ergodicComponentDecomposition : Prop
  rigidityTypeClassified : Prop
  leafwiseHarmonicFunction : Prop
  ratnerTypeProperty : Prop

structure ErgodicityRigidityEvidence {F : HolomorphicFoliationPackage} {F' : HolomorphicFoliationPackage}
    {T : TransverseStructurePackage F'} (E : ErgodicityRigidityPackage T) where
  ergodicComponentDecompositionClosed : E.ergodicComponentDecomposition
  rigidityTypeClassifiedClosed : E.rigidityTypeClassified
  leafwiseHarmonicFunctionClosed : E.leafwiseHarmonicFunction
  ratnerTypePropertyClosed : E.ratnerTypeProperty

def ErgodicityRigidityClosed {F : HolomorphicFoliationPackage} {F' : HolomorphicFoliationPackage}
    {T : TransverseStructurePackage F'} (E : ErgodicityRigidityPackage T) : Prop :=
  E.ergodicComponentDecomposition ∧ E.rigidityTypeClassified ∧
  E.leafwiseHarmonicFunction ∧ E.ratnerTypeProperty

theorem ergodicity_rigidity_closed_from_evidence {F : HolomorphicFoliationPackage} {F' : HolomorphicFoliationPackage}
    {T : TransverseStructurePackage F'} (E : ErgodicityRigidityPackage T)
    (Ev : ErgodicityRigidityEvidence E) : ErgodicityRigidityClosed E :=
  And.intro Ev.ergodicComponentDecompositionClosed (And.intro Ev.rigidityTypeClassifiedClosed
    (And.intro Ev.leafwiseHarmonicFunctionClosed Ev.ratnerTypePropertyClosed))

end HautevilleHouse.DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean