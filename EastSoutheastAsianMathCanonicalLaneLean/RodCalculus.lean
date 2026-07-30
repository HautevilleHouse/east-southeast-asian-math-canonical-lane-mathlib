import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure RodCalculus where
  rodCount : Nat
  additionMethod : Prop
  subtractionMethod : Prop
  carryMechanism : Prop
  recordKeeping : Prop
  additionClosed : additionMethod
  subtractionClosed : subtractionMethod
  carryClosed : carryMechanism
  recordClosed : recordKeeping

def RodCalculusClosed (R : RodCalculus) : Prop :=
  R.additionMethod ∧ R.subtractionMethod ∧ R.carryMechanism ∧ R.recordKeeping

theorem rod_calculus_closed_from_evidence (R : RodCalculus) : RodCalculusClosed R := by
  exact And.intro R.additionClosed (And.intro R.subtractionClosed (And.intro R.carryClosed R.recordClosed))

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse