import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

structure HolomorphicFoliationsAdmissibleObject where
  manifold : Type u
  complexStructure : TopologicalSpace manifold
  foliationData : Type v
  foliationSmooth : Prop
  leafHolonomy : Prop
  meromorphicConnection : Prop
  conclusion : foliationSmooth ∧ leafHolonomy ∧ meromorphicConnection

structure AdmissibleClass where
  object : HolomorphicFoliationsAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse
