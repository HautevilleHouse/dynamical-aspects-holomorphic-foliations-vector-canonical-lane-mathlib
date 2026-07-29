import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

structure FoliationsDynamicalCore where
  leafHolonomy : Prop
  leafStabilityGroup : Prop
  leafGrowthRate : Prop
  leafRecurrence : Prop
  leafHolonomyTerm : leafHolonomy
  leafStabilityGroupTerm : leafStabilityGroup
  leafGrowthRateTerm : leafGrowthRate
  leafRecurrenceTerm : leafRecurrence

def FoliationsDynamicalCoreClosed (C : FoliationsDynamicalCore) : Prop :=
  C.leafHolonomy ∧ C.leafStabilityGroup ∧ C.leafGrowthRate ∧ C.leafRecurrence

theorem foliations_dynamical_core_closed_from_evidence (C : FoliationsDynamicalCore) :
    FoliationsDynamicalCoreClosed C := by
  exact And.intro C.leafHolonomyTerm (And.intro C.leafStabilityGroupTerm (And.intro C.leafGrowthRateTerm C.leafRecurrenceTerm))

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse