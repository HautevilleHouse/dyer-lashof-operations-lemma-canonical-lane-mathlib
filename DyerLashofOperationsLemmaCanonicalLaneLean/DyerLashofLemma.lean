import canonicalLaneMathlib.AdmissibleClass
import DyerLashofOperationsLemmaCanonicalLaneLean.HomologyOperations

/-!
# Dyer-Lashof Lemma Package
-/

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

structure DyerLashofLemmaPackage {D : DyerLashofAlgebraPackage}
    {M : SteenrodModulePackage D} (H : HomologyOperationsPackage M) where
  statement : Prop
  proofObligations : Prop
  epilogue : Prop

structure DyerLashofLemmaEvidence {D : DyerLashofAlgebraPackage}
    {M : SteenrodModulePackage D} {H : HomologyOperationsPackage M}
    (L : DyerLashofLemmaPackage H) where
  statementClosed : L.statement
  proofObligationsClosed : L.proofObligations
  epilogueClosed : L.epilogue

def DyerLashofLemmaClosed {D : DyerLashofAlgebraPackage}
    {M : SteenrodModulePackage D} {H : HomologyOperationsPackage M}
    (L : DyerLashofLemmaPackage H) : Prop :=
  L.statement ∧ L.proofObligations ∧ L.epilogue

theorem dyer_lashof_lemma_closed_from_evidence
    {D : DyerLashofAlgebraPackage} {M : SteenrodModulePackage D}
    {H : HomologyOperationsPackage M} (L : DyerLashofLemmaPackage H)
    (E : DyerLashofLemmaEvidence L) : DyerLashofLemmaClosed L := by
  exact And.intro E.statementClosed
    (And.intro E.proofObligationsClosed E.epilogueClosed)

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse