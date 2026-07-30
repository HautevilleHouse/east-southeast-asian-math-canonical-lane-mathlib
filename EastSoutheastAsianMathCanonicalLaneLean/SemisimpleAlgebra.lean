import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure SemisimpleAlgebra (k : Type) [Field k] where
  carrier : Type u
  algebraStruct : Algebra k carrier
  semisimple : Prop
  artinian : Prop
  jacobsonRadicalZero : Prop
  decompositionIntoSimples : Prop

structure SemisimpleAlgebraEvidence (A : SemisimpleAlgebra k) where
  semisimpleClosed : A.semisimple
  artinianClosed : A.artinian
  jacobsonRadicalZeroClosed : A.jacobsonRadicalZero
  decompositionIntoSimplesClosed : A.decompositionIntoSimples

def SemisimpleAlgebraClosed (A : SemisimpleAlgebra k) : Prop :=
  A.semisimple ∧ A.artinian ∧ A.jacobsonRadicalZero ∧ A.decompositionIntoSimples

theorem semisimple_algebra_closed_from_evidence (A : SemisimpleAlgebra k)
    (E : SemisimpleAlgebraEvidence A) : SemisimpleAlgebraClosed A := by
  exact And.intro E.semisimpleClosed
    (And.intro E.artinianClosed
      (And.intro E.jacobsonRadicalZeroClosed E.decompositionIntoSimplesClosed))

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse