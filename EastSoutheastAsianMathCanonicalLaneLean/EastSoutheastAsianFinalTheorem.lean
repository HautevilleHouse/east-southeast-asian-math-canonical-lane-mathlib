import canonicalLaneMathlib.AdmissibleClass
import EastSoutheastAsianMathCanonicalLaneLean.EastSoutheastAsianBridge

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

def bridgeClosed (A : EastSoutheastAsianAdmissibleClass) : Prop :=
  eastSoutheastAsianWitnessClosed A.object

theorem bridge_from_admissible_class (A : EastSoutheastAsianAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : EastSoutheastAsianAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : EastSoutheastAsianAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def EastSoutheastAsianClosure (A : EastSoutheastAsianAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem east_southeast_asian_endgame (A : EastSoutheastAsianAdmissibleClass) :
    EastSoutheastAsianClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse