import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure RootSystem (V : Type) [AddCommGroup V] [Module ℝ V] where
  roots : Set V
  finite : Fintype roots
  spansV : Submodule.span ℝ roots = ⊤
  onlyZeroContainsZero : 0 ∉ roots
  reflectionInvariance : ∀ α ∈ roots, ∀ β ∈ roots, β - (2*⟪β,α⟫/⟪α,α⟫)*α ∈ roots
  crystallographic : ∀ α β ∈ roots, (2*⟪β,α⟫/⟪α,α⟫) ∈ ℤ

structure WeylGroup (R : RootSystem V) where
  elements : Type u
  groupStruct : Group elements
  actionOnV : elements → (V → V)
  generatedByReflections : ∀ w : elements, w ∈ Subgroup.generate {s | ∃ α ∈ R.roots, s = λ v => v - (2*⟪v,α⟫/⟪α,α⟫)*α}

def RootSystemClosed (R : RootSystem V) : Prop :=
  R.finite.card > 0 ∧ R.spansV ∧ R.onlyZeroContainsZero ∧ R.reflectionInvariance ∧ R.crystallographic

theorem root_system_closed_from_evidence (R : RootSystem V)
    (h1 : R.finite.card > 0) (h2 : R.spansV) (h3 : R.onlyZeroContainsZero)
    (h4 : R.reflectionInvariance) (h5 : R.crystallographic) : RootSystemClosed R := by
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse