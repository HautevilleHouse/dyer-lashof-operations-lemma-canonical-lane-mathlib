import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

structure SteenrodAlgebraPackage (M : Type u) where
  cohomologyRing : Type v
  steenrodSquares : Nat → (cohomologyRing → cohomologyRing)
  cartanFormula : Prop
  ademRelations : Prop
  unstableCondition : Prop
  cartanFormulaClosed : cartanFormula
  ademRelationsClosed : ademRelations
  unstableConditionClosed : unstableCondition

structure SteenrodAlgebraEvidence {M : Type u} (S : SteenrodAlgebraPackage M) where
  cartanFormulaClosed : S.cartanFormula
  ademRelationsClosed : S.ademRelations
  unstableConditionClosed : S.unstableCondition

def SteenrodAlgebraClosed {M : Type u} (S : SteenrodAlgebraPackage M) : Prop :=
  S.cartanFormula ∧ S.ademRelations ∧ S.unstableCondition

theorem steenrod_algebra_closed_from_evidence
    {M : Type u} (S : SteenrodAlgebraPackage M) (E : SteenrodAlgebraEvidence S) :
    SteenrodAlgebraClosed S := by
  exact And.intro E.cartanFormulaClosed (And.intro E.ademRelationsClosed E.unstableConditionClosed)

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse
