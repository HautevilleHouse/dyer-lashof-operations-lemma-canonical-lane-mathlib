import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsLemmaCanonicalLaneLean

def ConstrainedDyerLashofClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dyer_lashof_endgame (A : AdmissibleClass) :
    ConstrainedDyerLashofClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DyerLashofOperationsLemmaCanonicalLaneLean
end HautevilleHouse
