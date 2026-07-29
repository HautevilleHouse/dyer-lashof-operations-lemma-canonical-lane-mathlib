import canonicalLaneMathlib.AdmissibleClass
import DyerLashofOperationsLemmaCanonicalLaneLean.DyerLashofOperationsStructure

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

structure AdemRelationsPackage {A : DyerLashofAlgebra} {S : DyerLashofOperationsStructure A} where
  ademRelationsSatisfied : Prop
  ademBasisGiven : Prop
  steenrodAlgebraCohomology : Prop
  ademRelationsSatisfiedTerm : ademRelationsSatisfied
  ademBasisGivenTerm : ademBasisGiven
  steenrodAlgebraCohomologyTerm : steenrodAlgebraCohomology

structure AdemRelationsEvidence {A : DyerLashofAlgebra} {S : DyerLashofOperationsStructure A} (P : AdemRelationsPackage A S) where
  ademRelationsSatisfiedClosed : P.ademRelationsSatisfied
  ademBasisGivenClosed : P.ademBasisGiven
  steenrodAlgebraCohomologyClosed : P.steenrodAlgebraCohomology

def AdemRelationsClosed {A : DyerLashofAlgebra} {S : DyerLashofOperationsStructure A} (P : AdemRelationsPackage A S) : Prop :=
  P.ademRelationsSatisfied ∧ P.ademBasisGiven ∧ P.steenrodAlgebraCohomology

theorem adem_relations_closed_from_evidence {A : DyerLashofAlgebra} {S : DyerLashofOperationsStructure A} (P : AdemRelationsPackage A S) (E : AdemRelationsEvidence P) :
    AdemRelationsClosed P := by
  exact And.intro E.ademRelationsSatisfiedClosed (And.intro E.ademBasisGivenClosed E.steenrodAlgebraCohomologyClosed)

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse
