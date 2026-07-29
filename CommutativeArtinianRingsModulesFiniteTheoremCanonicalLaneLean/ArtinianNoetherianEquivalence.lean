import canonicalLaneMathlib.AdmissibleClass

/-!
# Artinian-Noetherian Equivalence Package
-/

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean

structure ArtinianNoetherianPackage where
  ringArtinian : Prop
  ringNoetherian : Prop
  moduleArtinian : Prop
  moduleNoetherian : Prop
  artinianImpliesNoetherian : Prop
  noetherianArtinianEquivalence : Prop

structure ArtinianNoetherianEvidence (P : ArtinianNoetherianPackage) where
  artinianImpliesNoetherianClosed : P.artinianImpliesNoetherian
  noetherianArtinianEquivalenceClosed : P.noetherianArtinianEquivalence

def ArtinianNoetherianClosed (P : ArtinianNoetherianPackage) : Prop :=
  P.artinianImpliesNoetherian ∧ P.noetherianArtinianEquivalence

theorem artinian_noetherian_closed_from_evidence (P : ArtinianNoetherianPackage)
    (E : ArtinianNoetherianEvidence P) : ArtinianNoetherianClosed P := by
  exact And.intro E.artinianImpliesNoetherianClosed
    E.noetherianArtinianEquivalenceClosed

end CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean
end HautevilleHouse