import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean.CommutativeArtinianRing

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean

structure FiniteLengthModule (A : CommutativeArtinianRing) where
  module : A.carrier → Type v
  isModule : ∀ (x : A.carrier), Module (A.ring) (module x)
  lengthFinite : Prop
  compositionSeriesExists : Prop

structure FiniteLengthModuleEvidence {A : CommutativeArtinianRing} (M : FiniteLengthModule A) where
  moduleClosed : ∀ x, M.isModule x
  lengthFiniteClosed : M.lengthFinite
  compositionSeriesExistsClosed : M.compositionSeriesExists

def FiniteLengthModuleClosed {A : CommutativeArtinianRing} (M : FiniteLengthModule A) : Prop :=
  (∀ x, M.isModule x) ∧ M.lengthFinite ∧ M.compositionSeriesExists

theorem finite_length_module_closed_from_evidence
    {A : CommutativeArtinianRing} (M : FiniteLengthModule A)
    (E : FiniteLengthModuleEvidence M) : FiniteLengthModuleClosed M := by
  exact And.intro E.moduleClosed
    (And.intro E.lengthFiniteClosed E.compositionSeriesExistsClosed)

end HautevilleHouse
end CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean
