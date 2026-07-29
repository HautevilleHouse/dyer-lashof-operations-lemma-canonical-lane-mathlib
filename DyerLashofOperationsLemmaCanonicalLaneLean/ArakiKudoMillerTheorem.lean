import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

structure ArakiKudoMillerData where
  p : Nat
  n : Nat
  homologyAlgebra : Type u
  homologyAlgebraStructure : Semiring homologyAlgebra
  dyerLashofOperation : homologyAlgebra → homologyAlgebra
  arakiKudoFormula : Prop
  millerCartanFormula : Prop
  mixedAdemRelations : Prop
  arakiKudoFormulaTerm : arakiKudoFormula
  millerCartanFormulaTerm : millerCartanFormula
  mixedAdemRelationsTerm : mixedAdemRelations

structure ArakiKudoMillerEvidence (A : ArakiKudoMillerData) where
  arakiKudoFormulaClosed : A.arakiKudoFormula
  millerCartanFormulaClosed : A.millerCartanFormula
  mixedAdemRelationsClosed : A.mixedAdemRelations

def ArakiKudoMillerClosed (A : ArakiKudoMillerData) : Prop :=
  A.arakiKudoFormula ∧ A.millerCartanFormula ∧ A.mixedAdemRelations

theorem araki_kudo_miller_closed_from_evidence (A : ArakiKudoMillerData)
    (E : ArakiKudoMillerEvidence A) : ArakiKudoMillerClosed A := by
  exact And.intro E.arakiKudoFormulaClosed
    (And.intro E.millerCartanFormulaClosed E.mixedAdemRelationsClosed)

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse