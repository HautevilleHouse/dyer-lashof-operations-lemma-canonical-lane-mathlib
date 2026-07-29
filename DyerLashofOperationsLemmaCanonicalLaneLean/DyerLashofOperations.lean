import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

structure DyerLashofOperationData where
  n : Nat
  p : Nat
  homologyType : Type u
  homologyRing : Semiring homologyType
  dyerLashofOperation : homologyType → homologyType
  admissibleCondition : Prop
  cartanFormula : Prop
  stability : Prop
  mixedAdemRelations : Prop
  admissibleConditionTerm : admissibleCondition
  cartanFormulaTerm : cartanFormula
  stabilityTerm : stability
  mixedAdemRelationsTerm : mixedAdemRelations

structure DyerLashofOperationEvidence (D : DyerLashofOperationData) where
  admissibleConditionClosed : D.admissibleCondition
  cartanFormulaClosed : D.cartanFormula
  stabilityClosed : D.stability
  mixedAdemRelationsClosed : D.mixedAdemRelations

def DyerLashofOperationClosed (D : DyerLashofOperationData) : Prop :=
  D.admissibleCondition ∧ D.cartanFormula ∧ D.stability ∧ D.mixedAdemRelations

theorem dyer_lashof_operation_closed_from_evidence (D : DyerLashofOperationData)
    (E : DyerLashofOperationEvidence D) : DyerLashofOperationClosed D := by
  exact And.intro E.admissibleConditionClosed
    (And.intro E.cartanFormulaClosed (And.intro E.stabilityClosed E.mixedAdemRelationsClosed))

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse