import canonicalLaneMathlib.AdmissibleClass

/-!
# Unstable Condition for Dyer-Lashof Operations

This module encodes the unstable condition for Dyer-Lashof operations,
which restricts the operations on homology of spaces.
-/

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

structure UnstableCondition (p : ℕ) [Fact (Nat.Prime p)] where
  spaceDimension : ℕ
  operationDegree : ℕ
  condition : operationDegree ≤ spaceDimension

structure UnstablePackage (X : Type) [TopologicalSpace X] (p : ℕ) [Fact (Nat.Prime p)] where
  space : X
  homologyDimension : ℕ
  operations : List (UnstableCondition p)
  allConditionsSatisfied : Prop
  stableRange : ℕ → Prop

structure UnstableEvidence (U : UnstablePackage X 2) where
  allConditionsSatisfiedClosed : U.allConditionsSatisfied
  stableRangeClosed : ∀ n, U.stableRange n

def UnstablePackageClosed (U : UnstablePackage X 2) : Prop :=
  U.allConditionsSatisfied ∧ (∀ n, U.stableRange n)

theorem unstable_package_closed_from_evidence (U : UnstablePackage X 2) (E : UnstableEvidence U) :
    UnstablePackageClosed U := by
  exact And.intro E.allConditionsSatisfiedClosed E.stableRangeClosed

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse