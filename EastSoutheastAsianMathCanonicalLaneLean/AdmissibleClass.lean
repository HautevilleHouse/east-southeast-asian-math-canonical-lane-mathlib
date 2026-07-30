import HautevilleHouse.EastSoutheastAsianMathCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure AdmissibleClass where
  object : ESEAadmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ESEAwitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse
