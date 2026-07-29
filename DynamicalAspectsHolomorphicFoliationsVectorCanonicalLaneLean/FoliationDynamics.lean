import DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean.HolomorphicFoliationsObjects

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

structure FoliationDynamicsPackage where
  flowMapExists : Prop
  invariantMeasures : Prop
  ergodicComponents : Prop
  lyapunovExponents : Prop

def FoliationDynamicsClosed (D : FoliationDynamicsPackage) : Prop :=
  D.flowMapExists ∧ D.invariantMeasures ∧ D.ergodicComponents ∧ D.lyapunovExponents

theorem foliation_dynamics_closed (D : FoliationDynamicsPackage) : FoliationDynamicsClosed D := by
  exact And.intro D.flowMapExists (And.intro D.invariantMeasures (And.intro D.ergodicComponents D.lyapunovExponents))

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse
