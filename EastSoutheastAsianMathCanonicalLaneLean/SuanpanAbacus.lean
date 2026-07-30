import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure SuanpanAbacus where
  beamCount : Nat
  beadArrangement : Prop
  placeValueStructure : Prop
  calculationMethod : Prop
  beadClosed : beadArrangement
  placeClosed : placeValueStructure
  calcClosed : calculationMethod

def SuanpanAbacusClosed (S : SuanpanAbacus) : Prop :=
  S.beadArrangement ∧ S.placeValueStructure ∧ S.calculationMethod

theorem suanpan_abacus_closed_from_evidence (S : SuanpanAbacus) : SuanpanAbacusClosed S := by
  exact And.intro S.beadClosed (And.intro S.placeClosed S.calcClosed)

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse