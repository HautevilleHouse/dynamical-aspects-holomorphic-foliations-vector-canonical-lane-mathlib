import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean.HolomorphicFoliation

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

structure HarmonicMeasuresPackage {F : HolomorphicFoliationPackage} (F' : HolomorphicFoliationPackage) where
  leafwiseLaplacian : Type u
  harmonicMeasureDefined : Prop
  uniqueErgodicMeasure : Prop
  entropyProperties : Prop

structure HarmonicMeasuresEvidence {F : HolomorphicFoliationPackage} {F' : HolomorphicFoliationPackage}
    (H : HarmonicMeasuresPackage F') where
  harmonicMeasureDefinedClosed : H.harmonicMeasureDefined
  uniqueErgodicMeasureClosed : H.uniqueErgodicMeasure
  entropyPropertiesClosed : H.entropyProperties

def HarmonicMeasuresClosed {F : HolomorphicFoliationPackage} {F' : HolomorphicFoliationPackage}
    (H : HarmonicMeasuresPackage F') : Prop :=
  H.harmonicMeasureDefined ∧ H.uniqueErgodicMeasure ∧ H.entropyProperties

theorem harmonic_measures_closed_from_evidence {F : HolomorphicFoliationPackage} {F' : HolomorphicFoliationPackage}
    (H : HarmonicMeasuresPackage F') (E : HarmonicMeasuresEvidence H) : HarmonicMeasuresClosed H :=
  And.intro E.harmonicMeasureDefinedClosed (And.intro E.uniqueErgodicMeasureClosed E.entropyPropertiesClosed)

end HautevilleHouse.DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean