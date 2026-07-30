import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure ModularFormsPackage where
  weight : Nat
  level : Nat
  character : Type u
  spaceDimension : Nat
  heckeOperatorDefined : Prop
  eigenformBasis : Prop

structure ModularFormsEvidence (M : ModularFormsPackage) where
  spaceDimensionClosed : M.spaceDimension
  heckeOperatorDefinedClosed : M.heckeOperatorDefined
  eigenformBasisClosed : M.eigenformBasis

def ModularFormsClosed (M : ModularFormsPackage) : Prop :=
  M.spaceDimension ∧ M.heckeOperatorDefined ∧ M.eigenformBasis

theorem modular_forms_closed_from_evidence (M : ModularFormsPackage)
    (E : ModularFormsEvidence M) : ModularFormsClosed M := by
  exact And.intro E.spaceDimensionClosed
    (And.intro E.heckeOperatorDefinedClosed E.eigenformBasisClosed)

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse