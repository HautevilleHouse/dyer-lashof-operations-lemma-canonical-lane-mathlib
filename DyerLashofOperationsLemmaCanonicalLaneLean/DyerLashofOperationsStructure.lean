import canonicalLaneMathlib.AdmissibleClass
import DyerLashofOperationsLemmaCanonicalLaneLean.DyerLashofAlgebra

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

structure DyerLashofOperationsStructure {A : DyerLashofAlgebra} where
  operations : ℕ → A.steenrodAlgebra → A.steenrodAlgebra
  ademRelations : Prop
  instability : Prop
  cartanFormula : Prop
  ademRelationsTerm : ademRelations
  instabilityTerm : instability
  cartanFormulaTerm : cartanFormula

structure DyerLashofOperationsEvidence {A : DyerLashofAlgebra} (S : DyerLashofOperationsStructure A) where
  ademRelationsClosed : S.ademRelations
  instabilityClosed : S.instability
  cartanFormulaClosed : S.cartanFormula

def DyerLashofOperationsClosed {A : DyerLashofAlgebra} (S : DyerLashofOperationsStructure A) : Prop :=
  S.ademRelations ∧ S.instability ∧ S.cartanFormula

theorem dyer_lashof_operations_closed_from_evidence {A : DyerLashofAlgebra} (S : DyerLashofOperationsStructure A) (E : DyerLashofOperationsEvidence S) :
    DyerLashofOperationsClosed S := by
  exact And.intro E.ademRelationsClosed (And.intro E.instabilityClosed E.cartanFormulaClosed)

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse
