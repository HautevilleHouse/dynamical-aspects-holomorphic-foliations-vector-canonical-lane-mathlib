import DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean.LeafHolonomyPackage
import DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean.MeromorphicConnectionPackage

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

structure DynamicSpectralAnalysisPackage {A : HolomorphicFoliationsAdmissibleObject}
    (L : LeafHolonomyPackage A) (M : MeromorphicConnectionPackage A) where
  lyapunovExponents : Type u
  entropies : Type v
  hyperbolicity : Prop
  nonuniformShearing : Prop
  disintegrationTheorem : Prop

structure DynamicSpectralAnalysisEvidence {A : HolomorphicFoliationsAdmissibleObject}
    {L : LeafHolonomyPackage A} {M : MeromorphicConnectionPackage A}
    (S : DynamicSpectralAnalysisPackage L M) where
  hyperbolicityClosed : S.hyperbolicity
  nonuniformShearingClosed : S.nonuniformShearing
  disintegrationTheoremClosed : S.disintegrationTheorem

def DynamicSpectralAnalysisClosed {A : HolomorphicFoliationsAdmissibleObject}
    {L : LeafHolonomyPackage A} {M : MeromorphicConnectionPackage A}
    (S : DynamicSpectralAnalysisPackage L M) : Prop :=
  S.hyperbolicity ∧ S.nonuniformShearing ∧ S.disintegrationTheorem

theorem dynamic_spectral_analysis_closed_from_evidence
    {A : HolomorphicFoliationsAdmissibleObject} {L : LeafHolonomyPackage A}
    {M : MeromorphicConnectionPackage A} (S : DynamicSpectralAnalysisPackage L M)
    (E : DynamicSpectralAnalysisEvidence S) : DynamicSpectralAnalysisClosed S := by
  exact And.intro E.hyperbolicityClosed
    (And.intro E.nonuniformShearingClosed E.disintegrationTheoremClosed)

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse
