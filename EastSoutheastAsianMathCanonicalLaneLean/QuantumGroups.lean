import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure QuantumGroupsPackage where
  hopfAlgebra : Type u
  quasitriangularStructure : Type v
  universalRMatrix : Prop
  quantumYangBaxter : Prop
  representationTheory : Prop

structure QuantumGroupsEvidence (Q : QuantumGroupsPackage) where
  universalRMatrixClosed : Q.universalRMatrix
  quantumYangBaxterClosed : Q.quantumYangBaxter
  representationTheoryClosed : Q.representationTheory

def QuantumGroupsClosed (Q : QuantumGroupsPackage) : Prop :=
  Q.universalRMatrix ∧ Q.quantumYangBaxter ∧ Q.representationTheory

theorem quantum_groups_closed_from_evidence (Q : QuantumGroupsPackage)
    (E : QuantumGroupsEvidence Q) : QuantumGroupsClosed Q := by
  exact And.intro E.universalRMatrixClosed
    (And.intro E.quantumYangBaxterClosed E.representationTheoryClosed)

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse