import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

structure HolomorphicFoliationsAdmittedObject where
  manifold : Type
  complexStructure : Prop
  foliation : Type
  leavesCompact : Prop
  leafSpaceCompact : Prop
  dynamicalSystemExists : Prop
  dynamicalSystemExistsTerm : dynamicalSystemExists

def HolomorphicFoliationsWitnessClosed (O : HolomorphicFoliationsAdmittedObject) : Prop :=
  O.dynamicalSystemExists

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse