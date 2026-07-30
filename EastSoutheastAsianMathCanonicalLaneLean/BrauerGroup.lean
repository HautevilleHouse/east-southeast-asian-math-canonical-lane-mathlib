import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EastSoutheastAsianMathCanonicalLaneLean.SemisimpleAlgebra

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure CentralSimpleAlgebra (k : Type) [Field k] where
  carrier : Type u
  algebraStruct : Algebra k carrier
  finiteDimensional : Prop
  center : carrier → Prop
  centerIsField : Prop
  simple : Prop

structure BrauerGroup (k : Type) [Field k] where
  elements : Type u
  groupStruct : Group elements
  mapFromCSA : CentralSimpleAlgebra k → elements
  productRule : ∀ (A B : CentralSimpleAlgebra k),
    mapFromCSA (tensorProduct A B) = mapFromCSA A * mapFromCSA B
  inverseRule : ∀ (A : CentralSimpleAlgebra k),
    mapFromCSA (oppositeAlgebra A) = (mapFromCSA A)⁻¹

def BrauerGroupClosed (B : BrauerGroup k) : Prop :=
  B.groupStruct.mulAssoc ∧ B.groupStruct.oneMul ∧ B.groupStruct.mulOne ∧
  (∀ a : B.elements, a * a⁻¹ = 1) ∧ (∀ a : B.elements, a⁻¹ * a = 1)

theorem brauer_group_closed (B : BrauerGroup k) : BrauerGroupClosed B := by
  exact And.intro B.groupStruct.mulAssoc (And.intro B.groupStruct.oneMul
    (And.intro B.groupStruct.mulOne (And.intro (by intro a; exact mul_inv_cancel a) (by intro a; exact inv_mul_cancel a))))

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse