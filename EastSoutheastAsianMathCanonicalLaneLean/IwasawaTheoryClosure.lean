import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure IwasawaTheoryPackage where
  cyclotomicExtension : Type u
  iwasawaModule : Type v
  muInvariantZero : Prop
  lambdaInvariantFinite : Prop
  characteristicIdealDefined : Prop

structure IwasawaTheoryEvidence (I : IwasawaTheoryPackage) where
  muInvariantZeroClosed : I.muInvariantZero
  lambdaInvariantFiniteClosed : I.lambdaInvariantFinite
  characteristicIdealDefinedClosed : I.characteristicIdealDefined

def IwasawaTheoryClosed (I : IwasawaTheoryPackage) : Prop :=
  I.muInvariantZero ∧ I.lambdaInvariantFinite ∧ I.characteristicIdealDefined

theorem iwasawa_theory_closed_from_evidence (I : IwasawaTheoryPackage)
    (E : IwasawaTheoryEvidence I) : IwasawaTheoryClosed I := by
  exact And.intro E.muInvariantZeroClosed
    (And.intro E.lambdaInvariantFiniteClosed E.characteristicIdealDefinedClosed)

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse