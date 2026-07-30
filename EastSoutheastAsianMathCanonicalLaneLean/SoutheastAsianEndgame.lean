import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop := True

def gateClosed (A : AdmissibleClass) : Prop := A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    unfold bridgeClosed
    trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  by
    unfold gateClosed
    exact A.gateWitness

def ConstrainedSoutheastAsianClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_southeast_asian_endgame (A : AdmissibleClass) :
    ConstrainedSoutheastAsianClosure A :=
  by
    unfold ConstrainedSoutheastAsianClosure
    exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse