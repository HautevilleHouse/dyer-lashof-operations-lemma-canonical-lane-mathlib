import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

structure HomologyNishidaData where
  p : Nat
  X : Type u
  homologyX : Type v
  homologyXRing : Semiring homologyX
  dyerLashofOperation : homologyX → homologyX
  homologyOperationCompatibility : Prop
  nishidaRelation : Prop
  homologyOperationCompatibilityTerm : homologyOperationCompatibility
  nishidaRelationTerm : nishidaRelation

structure HomologyNishidaEvidence (H : HomologyNishidaData) where
  homologyOperationCompatibilityClosed : H.homologyOperationCompatibility
  nishidaRelationClosed : H.nishidaRelation

def HomologyNishidaClosed (H : HomologyNishidaData) : Prop :=
  H.homologyOperationCompatibility ∧ H.nishidaRelation

theorem homology_nishida_closed_from_evidence (H : HomologyNishidaData)
    (E : HomologyNishidaEvidence H) : HomologyNishidaClosed H := by
  exact And.intro E.homologyOperationCompatibilityClosed E.nishidaRelationClosed

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse