import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

structure DyerLashofTateConstructionData where
  p : Nat
  G : Type u
  Ggroup : Group G
  tateHomology : Type v
  tateHomologyRing : Semiring tateHomology
  dyerLashofOperation : tateHomology → tateHomology
  tateCompatibility : Prop
  cobarResolution : Prop
  tateCompatibilityTerm : tateCompatibility
  cobarResolutionTerm : cobarResolution

structure DyerLashofTateConstructionEvidence (D : DyerLashofTateConstructionData) where
  tateCompatibilityClosed : D.tateCompatibility
  cobarResolutionClosed : D.cobarResolution

def DyerLashofTateConstructionClosed (D : DyerLashofTateConstructionData) : Prop :=
  D.tateCompatibility ∧ D.cobarResolution

theorem dyer_lashof_tate_construction_closed_from_evidence (D : DyerLashofTateConstructionData)
    (E : DyerLashofTateConstructionEvidence D) : DyerLashofTateConstructionClosed D := by
  exact And.intro E.tateCompatibilityClosed E.cobarResolutionClosed

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse