import canonicalLaneMathlib.AdmissibleClass
import DyerLashofOperationsLemmaCanonicalLaneLean.DyerLashofAlgebra

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

structure AdemRelationsProofPackage {D : DyerLashofAlgebraPackage} where
  algebraicProof : Prop
  topologicalProof : Prop
  consistencyCheck : Prop
  algebraicProofClosed : algebraicProof
  topologicalProofClosed : topologicalProof
  consistencyCheckClosed : consistencyCheck

structure AdemRelationsProofEvidence {D : DyerLashofAlgebraPackage}
    (A : AdemRelationsProofPackage D) where
  algebraicProofClosed : A.algebraicProof
  topologicalProofClosed : A.topologicalProof
  consistencyCheckClosed : A.consistencyCheck

def AdemRelationsProofClosed {D : DyerLashofAlgebraPackage}
    (A : AdemRelationsProofPackage D) : Prop :=
  A.algebraicProof ∧ A.topologicalProof ∧ A.consistencyCheck

theorem adem_relations_proof_closed_from_evidence
    {D : DyerLashofAlgebraPackage} (A : AdemRelationsProofPackage D)
    (E : AdemRelationsProofEvidence A) : AdemRelationsProofClosed A := by
  exact And.intro E.algebraicProofClosed
    (And.intro E.topologicalProofClosed E.consistencyCheckClosed)

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse