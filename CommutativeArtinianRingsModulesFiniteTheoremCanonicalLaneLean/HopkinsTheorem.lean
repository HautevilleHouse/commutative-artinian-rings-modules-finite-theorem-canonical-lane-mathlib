import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean.ModuleFiniteLength

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean

structure HopkinsTheoremPackage (A : CommutativeArtinianRing) where
  impliesFiniteLength : ∀ (M : FiniteLengthModule A), FiniteLengthModuleClosed M
  impliesArtinian : Prop
  impliesNoetherian : Prop
  hopkinsStatement : Prop

structure HopkinsTheoremEvidence {A : CommutativeArtinianRing} (H : HopkinsTheoremPackage A) where
  impliesFiniteLengthClosed : H.impliesFiniteLength
  impliesArtinianClosed : H.impliesArtinian
  impliesNoetherianClosed : H.impliesNoetherian
  hopkinsStatementClosed : H.hopkinsStatement

def HopkinsTheoremClosed {A : CommutativeArtinianRing} (H : HopkinsTheoremPackage A) : Prop :=
  H.impliesFiniteLength ∧ H.impliesArtinian ∧ H.impliesNoetherian ∧ H.hopkinsStatement

theorem hopkins_theorem_closed_from_evidence
    {A : CommutativeArtinianRing} (H : HopkinsTheoremPackage A)
    (E : HopkinsTheoremEvidence H) : HopkinsTheoremClosed H := by
  exact And.intro E.impliesFiniteLengthClosed
    (And.intro E.impliesArtinianClosed
      (And.intro E.impliesNoetherianClosed E.hopkinsStatementClosed))

end HautevilleHouse
end CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean
