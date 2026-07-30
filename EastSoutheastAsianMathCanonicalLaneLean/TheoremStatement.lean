import HautevilleHouse.EastSoutheastAsianMathCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure ESEAspace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ESEAadmittedObject where
  space : ESEAspace
  compactConnected : Prop
  groupStructure : Prop
  groupoidModel : ESEAgroupoidModel
  conclusion : groupoidModel.satisfiesConstraints

structure ESEAgroupoidModel where
  objects : Type
  morphisms : Type
  satisfiesConstraints : Prop

def ESEAwitnessClosed (O : ESEAadmittedObject) : Prop :=
  O.groupoidModel.satisfiesConstraints

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse
