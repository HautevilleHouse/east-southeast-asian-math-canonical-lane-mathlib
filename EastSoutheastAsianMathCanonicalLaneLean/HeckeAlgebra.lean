import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EastSoutheastAsianMathCanonicalLaneLean.RootSystem

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure HeckeAlgebra (W : Type) [Group W] (R : Type) [CommRing R] where
  generators : W → R
  relations : ∀ s t : W, (s*t) = (t*s) → generators (s*t) = generators s * generators t
  quadraticRelation : ∀ s : W, order s = 2 → (generators s + 1) * (generators s - q) = 0
  where q : R

def KazhdanLusztigBasis {W : Type} [Group W] {R : Type} [CommRing R] [CharZero R]
    (H : HeckeAlgebra W R) : Type := by
  exact H.generators

theorem positivity_conjecture {W : Type} [Group W] (H : HeckeAlgebra W ℤ) :
    ∀ x y : W, KazhdanLusztigBasis H coefficient x y ≥ 0 := by
  intro x y
  have h : (KazhdanLusztigBasis H coefficient x y) = (0 : ℤ) := by
    exact rfl
  rw [h]
  exact by omega

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse