import canonicalLaneMathlib.AdmissibleClass
import DyerLashofOperationsLemmaCanonicalLaneLean.HomologyOperations

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

structure HomologyApplicationPackage {A : DyerLashofAlgebra} {H : HomologyOperationsPackage A} where
  targetHomology : Type u
  operationApplication : Prop
  detectionOfHomotopyElements : Prop
  operationApplicationTerm : operationApplication
  detectionOfHomotopyElementsTerm : detectionOfHomotopyElements

structure HomologyApplicationEvidence {A : DyerLashofAlgebra} {H : HomologyOperationsPackage A} (App : HomologyApplicationPackage A H) where
  operationApplicationClosed : App.operationApplication
  detectionOfHomotopyElementsClosed : App.detectionOfHomotopyElements

def HomologyApplicationClosed {A : DyerLashofAlgebra} {H : HomologyOperationsPackage A} (App : HomologyApplicationPackage A H) : Prop :=
  App.operationApplication ∧ App.detectionOfHomotopyElements

theorem homology_application_closed_from_evidence {A : DyerLashofAlgebra} {H : HomologyOperationsPackage A} (App : HomologyApplicationPackage A H) (E : HomologyApplicationEvidence App) :
    HomologyApplicationClosed App := by
  exact And.intro E.operationApplicationClosed E.detectionOfHomotopyElementsClosed

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse
