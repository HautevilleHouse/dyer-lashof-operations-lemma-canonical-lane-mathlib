import canonicalLaneMathlib.AdmissibleClass

/-!
# Steenrod Algebra and Dyer-Lashof Operations

This module defines the algebraic setting for Dyer-Lashof operations:
the mod p Steenrod algebra A_p and the Dyer-Lashof algebra R_p.
-/

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

structure SteenrodAlgebra (p : ℕ) [Fact (Nat.Prime p)] where
  field : Type
  fieldAlgebra : Ring field
  steenrodGenerators : ℕ → field
  admissibleMonomials : Type
  coproduct : Type
  antiautomorphism : Type
  steenrodAlgebraDefined : Prop

structure DyerLashofAlgebra (p : ℕ) [Fact (Nat.Prime p)] where
  underlyingSteenrod : SteenrodAlgebra p
  operationGenerators : ℕ → underlyingSteenrod.field
  ademRelations : Prop
  cartanFormula : Prop
  instability : Prop
  dyerLashofAlgebraDefined : Prop

structure DyerLashofOperations (X : Type) [AddCommGroup X] [Module (SteenrodAlgebra 2) X] where
  operations : ℕ → (X → X)
  linearity : ∀ k x y, operations k (x + y) = operations k x + operations k y
  cartanFormulaHolds : Prop
  ademRelationsHold : Prop
  unstableCondition : Prop
  homologyActionCoherent : Prop

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse