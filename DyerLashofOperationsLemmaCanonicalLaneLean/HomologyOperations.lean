import canonicalLaneMathlib.AdmissibleClass
import DyerLashofOperationsLemmaCanonicalLaneLean.SteenrodModule

/-!
# Homology Operations Package
-/

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

structure HomologyOperationsPackage {D : DyerLashofAlgebraPackage}
    (M : SteenrodModulePackage D) where
  qOperations : ℕ → M.underlyingModule → M.underlyingModule
  instabilityCondition : Prop
  ademRelationsHomology : Prop
  cartanFormulaHomology : Prop

structure HomologyOperationsEvidence {D : DyerLashofAlgebraPackage}
    {M : SteenrodModulePackage D} (H : HomologyOperationsPackage M) where
  instabilityConditionClosed : H.instabilityCondition
  ademRelationsHomologyClosed : H.ademRelationsHomology
  cartanFormulaHomologyClosed : H.cartanFormulaHomology

def HomologyOperationsClosed {D : DyerLashofAlgebraPackage}
    {M : SteenrodModulePackage D} (H : HomologyOperationsPackage M) : Prop :=
  H.instabilityCondition ∧ H.ademRelationsHomology ∧ H.cartanFormulaHomology

theorem homology_operations_closed_from_evidence
    {D : DyerLashofAlgebraPackage} {M : SteenrodModulePackage D}
    (H : HomologyOperationsPackage M) (E : HomologyOperationsEvidence H) :
    HomologyOperationsClosed H := by
  exact And.intro E.instabilityConditionClosed
    (And.intro E.ademRelationsHomologyClosed E.cartanFormulaHomologyClosed)

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse