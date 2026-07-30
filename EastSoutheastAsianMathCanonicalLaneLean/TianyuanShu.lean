import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure TianyuanShu where
  polynomialNotation : Prop
  coefficientArrangement : Prop
  eliminationProcess : Prop
  rootFinding : Prop
  notationClosed : polynomialNotation
  coeffClosed : coefficientArrangement
  eliminationClosed : eliminationProcess
  rootClosed : rootFinding

def TianyuanShuClosed (T : TianyuanShu) : Prop :=
  T.polynomialNotation ∧ T.coefficientArrangement ∧ T.eliminationProcess ∧ T.rootFinding

theorem tianyuan_shu_closed_from_evidence (T : TianyuanShu) : TianyuanShuClosed T := by
  exact And.intro T.notationClosed (And.intro T.coeffClosed (And.intro T.eliminationClosed T.rootClosed))

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse