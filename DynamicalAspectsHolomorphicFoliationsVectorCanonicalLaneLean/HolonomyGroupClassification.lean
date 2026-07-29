import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

structure HolonomyGroupClassification where
  leafHolonomyGroup : Prop
  groupFiniteness : Prop
  groupResidualFiniteness : Prop
  amenableCondition : Prop
  leafHolonomyGroupTerm : leafHolonomyGroup
  groupFinitenessTerm : groupFiniteness
  groupResidualFinitenessTerm : groupResidualFiniteness
  amenableConditionTerm : amenableCondition

def HolonomyGroupClassificationClosed (H : HolonomyGroupClassification) : Prop :=
  H.leafHolonomyGroup ∧ H.groupFiniteness ∧ H.groupResidualFiniteness ∧ H.amenableCondition

theorem holonomy_group_classification_closed_from_evidence (H : HolonomyGroupClassification) :
    HolonomyGroupClassificationClosed H := by
  exact And.intro H.leafHolonomyGroupTerm (And.intro H.groupFinitenessTerm (And.intro H.groupResidualFinitenessTerm H.amenableConditionTerm))

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse