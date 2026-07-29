import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeArtinianRingsModulesFiniteTheorem.ArtinianModule

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheorem

structure AnnihilatorTheorem (R : Type u) [CommRing R] (M : ArtinianModule R) where
  annihilator : Ideal R
  productOfPrimary : Prop
  radicalAnnihilatorNilpotent : Prop
  primaryDecomposition : Prop
  productOfPrimaryClosed : productOfPrimary
  radicalAnnihilatorNilpotentClosed : radicalAnnihilatorNilpotent
  primaryDecompositionClosed : primaryDecomposition

structure AnnihilatorTheoremEvidence (R : Type u) [CommRing R] (M : ArtinianModule R) (A : AnnihilatorTheorem R M) where
  productOfPrimaryClosed : A.productOfPrimary
  radicalAnnihilatorNilpotentClosed : A.radicalAnnihilatorNilpotent
  primaryDecompositionClosed : A.primaryDecomposition

def AnnihilatorTheoremClosed (R : Type u) [CommRing R] (M : ArtinianModule R) (A : AnnihilatorTheorem R M) : Prop :=
  A.productOfPrimary ∧ A.radicalAnnihilatorNilpotent ∧ A.primaryDecomposition

theorem annihilator_theorem_closed_from_evidence (R : Type u) [CommRing R] (M : ArtinianModule R) (A : AnnihilatorTheorem R M) (E : AnnihilatorTheoremEvidence R M A) : AnnihilatorTheoremClosed R M A :=
  And.intro E.productOfPrimaryClosed (And.intro E.radicalAnnihilatorNilpotentClosed E.primaryDecompositionClosed)

end CommutativeArtinianRingsModulesFiniteTheorem
end HautevilleHouse
