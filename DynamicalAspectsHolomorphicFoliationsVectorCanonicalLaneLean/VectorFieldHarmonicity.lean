import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

structure VectorFieldHarmonicity where
  holomorphicVectorField : Prop
  harmonicityCondition : Prop
  leafAdaptedCondition : Prop
  zeroSetDiscrete : Prop
  holomorphicVectorFieldTerm : holomorphicVectorField
  harmonicityConditionTerm : harmonicityCondition
  leafAdaptedConditionTerm : leafAdaptedCondition
  zeroSetDiscreteTerm : zeroSetDiscrete

def VectorFieldHarmonicityClosed (V : VectorFieldHarmonicity) : Prop :=
  V.holomorphicVectorField ∧ V.harmonicityCondition ∧ V.leafAdaptedCondition ∧ V.zeroSetDiscrete

theorem vector_field_harmonicity_closed_from_evidence (V : VectorFieldHarmonicity) :
    VectorFieldHarmonicityClosed V := by
  exact And.intro V.holomorphicVectorFieldTerm (And.intro V.harmonicityConditionTerm (And.intro V.leafAdaptedConditionTerm V.zeroSetDiscreteTerm))

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse