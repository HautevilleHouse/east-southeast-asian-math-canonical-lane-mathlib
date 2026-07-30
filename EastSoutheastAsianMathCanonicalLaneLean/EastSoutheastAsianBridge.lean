import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure EastSoutheastAsianAdmittedObject where
  field : Type u
  characteristicZero : Prop
  galoisGroupComputed : Prop
  conclusion : Prop

def eastSoutheastAsianWitnessClosed (O : EastSoutheastAsianAdmittedObject) : Prop :=
  O.conclusion

structure EastSoutheastAsianAdmissibleClass where
  object : EastSoutheastAsianAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : EastSoutheastAsianAdmissibleClass) : Prop :=
  eastSoutheastAsianWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse