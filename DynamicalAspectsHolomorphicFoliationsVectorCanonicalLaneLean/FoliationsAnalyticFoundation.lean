import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean

structure FoliationsAnalyticFoundation (M : Type) [TopologicalSpace M] [ComplexManifold M] where
  foliation : HolomorphicFoliation M
  vectorField : FoliatedVectorFieldPackage M
  leavesCompactness : Prop
  leafHolonomyInvariant : Prop
  leavesCompactnessTerm : leavesCompactness
  leafHolonomyInvariantTerm : leafHolonomyInvariant

end DynamicalAspectsHolomorphicFoliationsVectorCanonicalLaneLean
end HautevilleHouse
