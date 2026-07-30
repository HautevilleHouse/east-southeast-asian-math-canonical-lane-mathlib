import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure SoutheastAsianNumeralSystems where
  baseSystems : List String
  zeroSymbols : List String
  positionalNotation : Prop
  decimalSystem : Prop
  placeValueRecorded : Prop
  placeValueTerm : placeValueRecorded

def SoutheastAsianNumeralSystemsClosed (S : SoutheastAsianNumeralSystems) : Prop :=
  S.positionalNotation ∧ S.decimalSystem ∧ S.placeValueRecorded

theorem southeast_asian_numeral_systems_closed_from_evidence
    (S : SoutheastAsianNumeralSystems) (E : S.placeValueRecorded) :
    SoutheastAsianNumeralSystemsClosed S := by
  exact And.intro S.positionalNotation (And.intro S.decimalSystem E)

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse