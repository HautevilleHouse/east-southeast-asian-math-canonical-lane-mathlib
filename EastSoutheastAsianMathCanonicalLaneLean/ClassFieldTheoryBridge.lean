import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure ClassFieldBridgePackage where
  baseField : Type u
  extensionDegree : Nat
  classGroupComputed : Prop
  hilbertClassFieldExists : Prop
  unramifiedCondition : Prop

structure ClassFieldBridgeEvidence (C : ClassFieldBridgePackage) where
  classGroupComputedClosed : C.classGroupComputed
  hilbertClassFieldExistsClosed : C.hilbertClassFieldExists
  unramifiedConditionClosed : C.unramifiedCondition

def ClassFieldBridgeClosed (C : ClassFieldBridgePackage) : Prop :=
  C.classGroupComputed ∧ C.hilbertClassFieldExists ∧ C.unramifiedCondition

theorem class_field_bridge_closed_from_evidence (C : ClassFieldBridgePackage)
    (E : ClassFieldBridgeEvidence C) : ClassFieldBridgeClosed C := by
  exact And.intro E.classGroupComputedClosed
    (And.intro E.hilbertClassFieldExistsClosed E.unramifiedConditionClosed)

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse