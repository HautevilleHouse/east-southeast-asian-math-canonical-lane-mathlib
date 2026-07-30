import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EastSoutheastAsianMathCanonicalLaneLean.SemisimpleAlgebra

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure Character (G : Type) [Group G] (k : Type) [Field k] where
  carrier : G → k
  homomorphism : Prop
  irreducible : Prop

structure InducedCharacter {H : Type} [Group H] {G : Type} [Group G] (f : H → G) [IsGroupHom f]
    (χ : Character H k) where
  inducedFn : G → k
  inductionFormula : ∀ g : G, inducedFn g = (∑ x in (kernel f).cosets, χ (representative x)) 
  wellDefined : Prop

def CharacterInnerProduct {G : Type} [Group G] {k : Type} [Field k] [CharZero k]
    (χ ψ : Character G k) : k :=
  (1 / (card G : k)) * (∑ g : G, χ g * ψ (g⁻¹))

theorem schur_orthogonality {G : Type} [Group G] {k : Type} [Field k] [CharZero k]
    (χ ψ : Character G k) (hχ : χ.irreducible) (hψ : ψ.irreducible) :
    CharacterInnerProduct χ ψ = if χ = ψ then 1 else 0 := by
  sorry

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse