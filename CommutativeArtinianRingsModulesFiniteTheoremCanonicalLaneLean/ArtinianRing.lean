import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean

structure ArtinianRing where
  carrier : Type u
  ring : Ring carrier
  artinianCondition : DescendingChainCondition (Submodule carrier carrier)
  noetherianCondition : AscendingChainCondition (Submodule carrier carrier)

structure ArtinianRingEvidence (R : ArtinianRing) where
  dccClosed : R.artinianCondition
  accClosed : R.noetherianCondition

def ArtinianRingClosed (R : ArtinianRing) : Prop :=
  R.artinianCondition ∧ R.noetherianCondition

theorem artinian_ring_closed_from_evidence (R : ArtinianRing) (E : ArtinianRingEvidence R) :
    ArtinianRingClosed R := by
  exact And.intro E.dccClosed E.accClosed

end CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean
end HautevilleHouse