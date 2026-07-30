import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure ClusterAlgebrasPackage where
  seed : Type u
  exchangeMatrix : Type v
  clusterMutations : Prop
  laurentPhenomenon : Prop
  positivityConjecture : Prop

structure ClusterAlgebrasEvidence (C : ClusterAlgebrasPackage) where
  clusterMutationsClosed : C.clusterMutations
  laurentPhenomenonClosed : C.laurentPhenomenon
  positivityConjectureClosed : C.positivityConjecture

def ClusterAlgebrasClosed (C : ClusterAlgebrasPackage) : Prop :=
  C.clusterMutations ∧ C.laurentPhenomenon ∧ C.positivityConjecture

theorem cluster_algebras_closed_from_evidence (C : ClusterAlgebrasPackage)
    (E : ClusterAlgebrasEvidence C) : ClusterAlgebrasClosed C := by
  exact And.intro E.clusterMutationsClosed
    (And.intro E.laurentPhenomenonClosed E.positivityConjectureClosed)

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse