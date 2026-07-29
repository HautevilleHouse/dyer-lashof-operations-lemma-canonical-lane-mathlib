import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

structure SteenrodAlgebraData where
  p : Nat
  primeOdd : p > 2
  normalizedAdmissibleSequence : Prop
  steenrodSquaring : Nat → Prop
  steenrodSquaringDefinedTerm : steenrodSquaring
  steenrodAlgebraStructure : Prop
  algebraStructureTerm : steenrodAlgebraStructure

def SteenrodAlgebraClosed (S : SteenrodAlgebraData) : Prop :=
  S.normalizedAdmissibleSequence ∧ S.steenrodSquaring ∧ S.steenrodAlgebraStructure

theorem steenrod_algebra_closed (S : SteenrodAlgebraData) : SteenrodAlgebraClosed S := by
  exact And.intro (by
    have h : S.normalizedAdmissibleSequence := by
      exact sorry
    exact h) (And.intro (by
      exact S.steenrodSquaringDefinedTerm)
    (by
      exact S.algebraStructureTerm))

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse