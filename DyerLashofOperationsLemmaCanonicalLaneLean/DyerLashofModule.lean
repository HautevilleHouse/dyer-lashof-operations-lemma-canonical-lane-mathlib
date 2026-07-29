import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

structure DyerLashofModulePackage {M : Type u} (S : SteenrodAlgebraPackage M) where
  homologyRing : Type v
  dyerLashofOperations : Nat → (homologyRing → homologyRing)
  nishidaRelations : Prop
  internalCartanFormula : Prop
  moduleCompatibility : Prop
  nishidaRelationsClosed : nishidaRelations
  internalCartanFormulaClosed : internalCartanFormula
  moduleCompatibilityClosed : moduleCompatibility

structure DyerLashofModuleEvidence {M : Type u} {S : SteenrodAlgebraPackage M}
    (D : DyerLashofModulePackage S) where
  nishidaRelationsClosed : D.nishidaRelations
  internalCartanFormulaClosed : D.internalCartanFormula
  moduleCompatibilityClosed : D.moduleCompatibility

def DyerLashofModuleClosed {M : Type u} {S : SteenrodAlgebraPackage M}
    (D : DyerLashofModulePackage S) : Prop :=
  D.nishidaRelations ∧ D.internalCartanFormula ∧ D.moduleCompatibility

theorem dyer_lashof_module_closed_from_evidence
    {M : Type u} {S : SteenrodAlgebraPackage M} (D : DyerLashofModulePackage S)
    (E : DyerLashofModuleEvidence D) : DyerLashofModuleClosed D := by
  exact And.intro E.nishidaRelationsClosed (And.intro E.internalCartanFormulaClosed E.moduleCompatibilityClosed)

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse
