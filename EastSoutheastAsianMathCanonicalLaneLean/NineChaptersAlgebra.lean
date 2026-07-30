import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure NineChaptersAlgebra where
  linearSystems : Prop
  matrixRepresentation : Prop
  eliminationMethod : Prop
  negativeNumbers : Prop
  linearClosed : linearSystems
  matrixClosed : matrixRepresentation
  eliminationClosed : eliminationMethod
  negativeClosed : negativeNumbers

def NineChaptersAlgebraClosed (N : NineChaptersAlgebra) : Prop :=
  N.linearSystems ∧ N.matrixRepresentation ∧ N.eliminationMethod ∧ N.negativeNumbers

theorem nine_chapters_algebra_closed_from_evidence (N : NineChaptersAlgebra) : NineChaptersAlgebraClosed N := by
  exact And.intro N.linearClosed (And.intro N.matrixClosed (And.intro N.eliminationClosed N.negativeClosed))

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse