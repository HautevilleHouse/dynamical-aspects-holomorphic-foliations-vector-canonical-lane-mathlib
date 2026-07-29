import DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean.HolomorphicFoliationsAdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let O := A.object
  O.foliationSmooth ∧ O.leafHolonomy ∧ O.meromorphicConnection

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  let O := A.object
  exact O.conclusion

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse
