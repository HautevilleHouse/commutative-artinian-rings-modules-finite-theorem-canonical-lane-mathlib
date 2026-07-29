import canonicalLaneMathlib.AdmissibleClass

/-!
# Finite Length Structure Package
-/

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean

structure FiniteLengthPackage where
  module : Type v
  length : Nat
  compositionSeriesExists : Prop
  lengthAdditiveOnShortExact : Prop
  artinianNoetherianEquivalence : Prop

structure FiniteLengthEvidence (P : FiniteLengthPackage) where
  compositionSeriesExistsClosed : P.compositionSeriesExists
  lengthAdditiveOnShortExactClosed : P.lengthAdditiveOnShortExact
  artinianNoetherianEquivalenceClosed : P.artinianNoetherianEquivalence

def FiniteLengthClosed (P : FiniteLengthPackage) : Prop :=
  P.compositionSeriesExists ∧ P.lengthAdditiveOnShortExact ∧
  P.artinianNoetherianEquivalence

theorem finite_length_closed_from_evidence (P : FiniteLengthPackage)
    (E : FiniteLengthEvidence P) : FiniteLengthClosed P := by
  exact And.intro E.compositionSeriesExistsClosed
    (And.intro E.lengthAdditiveOnShortExactClosed
      E.artinianNoetherianEquivalenceClosed)

end CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean
end HautevilleHouse