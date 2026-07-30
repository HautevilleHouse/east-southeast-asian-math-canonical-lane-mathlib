import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure SoutheastAsianManifold where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothAtlas : Type v
  dimensionTwo : Prop
  hausdorffParacompact : Prop

structure SoutheastAsianAdmittedObject where
  manifold : SoutheastAsianManifold
  distinguishedPoint : manifold.carrier
  compactConnected : Prop
  conclusion : compactConnected

def SoutheastAsianWitnessClosed (O : SoutheastAsianAdmittedObject) : Prop :=
  O.compactConnected

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse