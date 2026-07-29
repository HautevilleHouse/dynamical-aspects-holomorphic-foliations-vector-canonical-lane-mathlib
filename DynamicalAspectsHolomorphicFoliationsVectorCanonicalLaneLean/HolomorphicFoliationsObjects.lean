import DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HolomorphicFoliationsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedObjectHolomorphicFoliations where
  space : HolomorphicFoliationsSpace
  foliationDimension : ℕ
  holomorphicFoliation : Prop
  leafDecomposition : Prop
  leafCompactness : Prop
  leafHolomorphicity : Prop
  conclusion : leafCompactness ∧ leafHolomorphicity

structure HolomorphicFoliationsEndgameState where
  object : AdmittedObjectHolomorphicFoliations

def HolomorphicFoliationsWitnessClosed (O : AdmittedObjectHolomorphicFoliations) : Prop :=
  O.leafCompactness ∧ O.leafHolomorphicity

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse
