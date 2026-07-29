import canonicalLaneMathlib.AdmissibleClass
import DyerLashofOperationsLemmaCanonicalLaneLean.HomologyOperations

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

structure ApplicationToHomotopyPackage {D : DyerLashofAlgebraPackage}
    {H : HomologyOperationsPackage D} where
  homotopyGroups : Type u
  detectionTheorem : Prop
  detectionTheoremClosed : detectionTheorem

structure ApplicationToHomotopyEvidence {D : DyerLashofAlgebraPackage}
    {H : HomologyOperationsPackage D}
    (A : ApplicationToHomotopyPackage D H) where
  detectionTheoremClosed : A.detectionTheorem

def ApplicationToHomotopyClosed {D : DyerLashofAlgebraPackage}
    {H : HomologyOperationsPackage D}
    (A : ApplicationToHomotopyPackage D H) : Prop :=
  A.detectionTheorem

theorem application_to_homotopy_closed_from_evidence
    {D : DyerLashofAlgebraPackage} {H : HomologyOperationsPackage D}
    (A : ApplicationToHomotopyPackage D H)
    (E : ApplicationToHomotopyEvidence A) : ApplicationToHomotopyClosed A :=
  E.detectionTheoremClosed

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse