import canonicalLaneMathlib.AdmissibleClass
import DyerLashofOperationsLemmaCanonicalLaneLean.DyerLashofAlgebra

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

structure CartanFormulaProofPackage {D : DyerLashofAlgebraPackage} where
  smashProductFormula : Prop
  homotopyCommutativityUsed : Prop
  formulaDerived : Prop
  smashProductFormulaClosed : smashProductFormula
  homotopyCommutativityUsedClosed : homotopyCommutativityUsed
  formulaDerivedClosed : formulaDerived

structure CartanFormulaProofEvidence {D : DyerLashofAlgebraPackage}
    (C : CartanFormulaProofPackage D) where
  smashProductFormulaClosed : C.smashProductFormula
  homotopyCommutativityUsedClosed : C.homotopyCommutativityUsed
  formulaDerivedClosed : C.formulaDerived

def CartanFormulaProofClosed {D : DyerLashofAlgebraPackage}
    (C : CartanFormulaProofPackage D) : Prop :=
  C.smashProductFormula ∧ C.homotopyCommutativityUsed ∧ C.formulaDerived

theorem cartan_formula_proof_closed_from_evidence
    {D : DyerLashofAlgebraPackage} (C : CartanFormulaProofPackage D)
    (E : CartanFormulaProofEvidence C) : CartanFormulaProofClosed C := by
  exact And.intro E.smashProductFormulaClosed
    (And.intro E.homotopyCommutativityUsedClosed E.formulaDerivedClosed)

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse