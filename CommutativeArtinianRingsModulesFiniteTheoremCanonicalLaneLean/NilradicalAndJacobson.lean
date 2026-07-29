import canonicalLaneMathlib.AdmissibleClass

/-!
# Nilradical and Jacobson Radical Package
-/

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean

structure NilradicalJacobsonPackage where
  nilradical : Set ring
  jacobsonRadical : Set ring
  nilradicalNilpotent : Prop
  jacobsonEqualsNilradical : Prop
  primeSpectrumFinite : Prop
  maxSpecEqualsPrimeSpec : Prop

structure NilradicalJacobsonEvidence (P : NilradicalJacobsonPackage) where
  nilradicalNilpotentClosed : P.nilradicalNilpotent
  jacobsonEqualsNilradicalClosed : P.jacobsonEqualsNilradical
  primeSpectrumFiniteClosed : P.primeSpectrumFinite
  maxSpecEqualsPrimeSpecClosed : P.maxSpecEqualsPrimeSpec

def NilradicalJacobsonClosed (P : NilradicalJacobsonPackage) : Prop :=
  P.nilradicalNilpotent ∧ P.jacobsonEqualsNilradical ∧
  P.primeSpectrumFinite ∧ P.maxSpecEqualsPrimeSpec

theorem nilradical_jacobson_closed_from_evidence (P : NilradicalJacobsonPackage)
    (E : NilradicalJacobsonEvidence P) : NilradicalJacobsonClosed P := by
  exact And.intro E.nilradicalNilpotentClosed
    (And.intro E.jacobsonEqualsNilradicalClosed
      (And.intro E.primeSpectrumFiniteClosed E.maxSpecEqualsPrimeSpecClosed))

end CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean
end HautevilleHouse