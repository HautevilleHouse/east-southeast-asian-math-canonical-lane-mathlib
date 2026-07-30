import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure IntegrableSystemsPackage where
  phaseSpace : Type u
  poissonStructure : Type v
  commutingFirstIntegrals : Prop
  actionAngleCoordinates : Prop
  liouvilleArnoldTheorem : Prop

structure IntegrableSystemsEvidence (I : IntegrableSystemsPackage) where
  commutingFirstIntegralsClosed : I.commutingFirstIntegrals
  actionAngleCoordinatesClosed : I.actionAngleCoordinates
  liouvilleArnoldTheoremClosed : I.liouvilleArnoldTheorem

def IntegrableSystemsClosed (I : IntegrableSystemsPackage) : Prop :=
  I.commutingFirstIntegrals ∧ I.actionAngleCoordinates ∧ I.liouvilleArnoldTheorem

theorem integrable_systems_closed_from_evidence (I : IntegrableSystemsPackage)
    (E : IntegrableSystemsEvidence I) : IntegrableSystemsClosed I := by
  exact And.intro E.commutingFirstIntegralsClosed
    (And.intro E.actionAngleCoordinatesClosed E.liouvilleArnoldTheoremClosed)

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse