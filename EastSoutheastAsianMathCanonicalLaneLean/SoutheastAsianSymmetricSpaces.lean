import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

structure SoutheastAsianSymmetricSpace (G : Type u) [Group G] where
  symmetricDomain : Type v
  maximalCompactSubgroup : Subgroup G
  rank : ℕ
  restrictedRootSystem : RootSystem G
  infinitesimalCharacter : Type w
  harishChandraHomomorphism : Prop
  discreteSeriesRepresentation : Prop
  cuspFormCondition : Prop
  maassSlashInvariant : Prop

structure SoutheastAsianSymmetricSpaceEvidence (X : SoutheastAsianSymmetricSpace G) where
  symmetricDomainClosed : X.symmetricDomain = X.symmetricDomain
  rankPositiveClosed : X.rank ≥ 0
  harishChandraHomomorphismClosed : X.harishChandraHomomorphism
  discreteSeriesRepresentationClosed : X.discreteSeriesRepresentation
  cuspFormConditionClosed : X.cuspFormCondition
  maassSlashInvariantClosed : X.maassSlashInvariant

def SoutheastAsianSymmetricSpaceClosed (X : SoutheastAsianSymmetricSpace G) : Prop :=
  X.harishChandraHomomorphism ∧ X.discreteSeriesRepresentation ∧ X.cuspFormCondition ∧ X.maassSlashInvariant

theorem southeast_asian_symmetric_space_closed_from_evidence
    (X : SoutheastAsianSymmetricSpace G) (E : SoutheastAsianSymmetricSpaceEvidence X) :
    SoutheastAsianSymmetricSpaceClosed X := by
  exact And.intro E.harishChandraHomomorphismClosed
    (And.intro E.discreteSeriesRepresentationClosed
      (And.intro E.cuspFormConditionClosed E.maassSlashInvariantClosed))

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse