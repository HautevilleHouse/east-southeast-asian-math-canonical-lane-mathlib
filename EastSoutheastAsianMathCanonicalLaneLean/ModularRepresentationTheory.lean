import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EastSoutheastAsianMathCanonicalLaneLean.SemisimpleAlgebra

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure ModularRepresentation (G : Type) [Group G] (k : Type) [Field k] [CharP k p] where
  carrier : Type u
  moduleStruct : Module k carrier
  action : G → (carrier → carrier)
  linearAction : ∀ g, LinearMap k carrier carrier (action g)
  finiteDimensional : Prop

structure DecompositionMatrix (G : Type) [Group G] (k : Type) [Field k] [CharP k p] where
  simpleModules : List (ModularRepresentation G k)
  indecomposableModules : List (ModularRepresentation G k)
  decompositionNumbers : SimpleModule → IndecomposableModule → ℕ
  cartanMatrix : IndecomposableModule → IndecomposableModule → ℕ

theorem brauer_character_orthogonality {G : Type} [Group G] {k : Type} [Field k] [CharP k p]
    (χ ψ : ModularRepresentation G k) : Prop :=
  ∀ g h : G, g⁻¹*h ∈ kernel (χ.action) → χ.action g = ψ.action g

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse