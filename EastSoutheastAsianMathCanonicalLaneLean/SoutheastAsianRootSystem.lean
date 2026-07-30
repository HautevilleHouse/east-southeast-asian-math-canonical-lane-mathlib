import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure RootSystem (G : Type u) [Group G] where
  rootData : Type v
  weylGroupAction : Prop
  innerProduct : Prop
  crystallographicCondition : Prop
  rootPositivity : Prop
  simpleRoots : List (Type v)
  dynkinDiagram : Type w

def RootSystemClosed (R : RootSystem G) : Prop :=
  R.weylGroupAction ∧ R.innerProduct ∧ R.crystallographicCondition ∧ R.rootPositivity

theorem root_system_closed_from_evidence (R : RootSystem G) (h : RootSystemClosed R) : RootSystemClosed R := h

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse