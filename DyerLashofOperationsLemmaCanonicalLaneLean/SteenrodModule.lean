import canonicalLaneMathlib.AdmissibleClass
import DyerLashofOperationsLemmaCanonicalLaneLean.DyerLashofAlgebra

/-!
# Steenrod Module Package
-/

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

structure SteenrodModulePackage (D : DyerLashofAlgebraPackage) where
  underlyingModule : Type u
  action : ℕ → D.operations 0 → underlyingModule → underlyingModule
  moduleAxioms : Prop
  unstableAction : Prop
  nilpotenceActions : Prop

structure SteenrodModuleEvidence {D : DyerLashofAlgebraPackage}
    (M : SteenrodModulePackage D) where
  moduleAxiomsClosed : M.moduleAxioms
  unstableActionClosed : M.unstableAction
  nilpotenceActionsClosed : M.nilpotenceActions

def SteenrodModuleClosed {D : DyerLashofAlgebraPackage}
    (M : SteenrodModulePackage D) : Prop :=
  M.moduleAxioms ∧ M.unstableAction ∧ M.nilpotenceActions

theorem steenrod_module_closed_from_evidence
    {D : DyerLashofAlgebraPackage} (M : SteenrodModulePackage D)
    (E : SteenrodModuleEvidence M) : SteenrodModuleClosed M := by
  exact And.intro E.moduleAxiomsClosed
    (And.intro E.unstableActionClosed E.nilpotenceActionsClosed)

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse