import canonicalLaneMathlib.AdmissibleClass

/-!
# Dyer-Lashof Algebra Package
-/

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

structure DyerLashofAlgebraPackage where
  groundRing : Type u
  operations : ℕ → (Type u)
  ademRelations : {r s : ℕ} → (r > 2s) → operations r → operations s → operations (r + s)
  unstableCondition : Prop
  cartanFormula : Prop
  intersectionFormula : Prop

structure DyerLashofAlgebraEvidence (D : DyerLashofAlgebraPackage) where
  unstableConditionClosed : D.unstableCondition
  cartanFormulaClosed : D.cartanFormula
  intersectionFormulaClosed : D.intersectionFormula

def DyerLashofAlgebraClosed (D : DyerLashofAlgebraPackage) : Prop :=
  D.unstableCondition ∧ D.cartanFormula ∧ D.intersectionFormula

theorem dyer_lashof_algebra_closed_from_evidence
    (D : DyerLashofAlgebraPackage) (E : DyerLashofAlgebraEvidence D) :
    DyerLashofAlgebraClosed D := by
  exact And.intro E.unstableConditionClosed
    (And.intro E.cartanFormulaClosed E.intersectionFormulaClosed)

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse