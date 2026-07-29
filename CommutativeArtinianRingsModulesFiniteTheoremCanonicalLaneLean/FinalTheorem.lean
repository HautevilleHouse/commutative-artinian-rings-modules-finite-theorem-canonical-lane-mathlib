import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean.HopkinsTheorem

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean

def ConstrainedArtinianModulesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_artinian_modules_endgame (A : AdmissibleClass) :
    ConstrainedArtinianModulesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean
