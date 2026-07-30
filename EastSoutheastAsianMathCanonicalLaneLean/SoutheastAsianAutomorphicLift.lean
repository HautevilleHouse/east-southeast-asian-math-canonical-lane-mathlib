import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure AutomorphicLift (π : Type u) (ρ : Type v) where
  sourceRepresentation : π
  targetRepresentation : ρ
  liftMap : π → ρ
  functoriality : Prop
  ramificationControl : Prop
  localGlobalCompatibility : Prop
  heightFunction : Type w
  arakelovMetric : Prop

def AutomorphicLiftClosed (L : AutomorphicLift π ρ) : Prop :=
  L.functoriality ∧ L.ramificationControl ∧ L.localGlobalCompatibility ∧ L.arakelovMetric

theorem automorphic_lift_closed_from_evidence (L : AutomorphicLift π ρ) (h : AutomorphicLiftClosed L) : AutomorphicLiftClosed L := h

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse