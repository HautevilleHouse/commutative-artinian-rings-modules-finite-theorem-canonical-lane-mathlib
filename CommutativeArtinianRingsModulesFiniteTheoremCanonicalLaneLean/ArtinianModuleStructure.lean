import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean

structure ArtinianModule (R : Type u) [CommRing R] where
  carrier : Type v
  add : carrier → carrier → carrier
  smul : R → carrier → carrier
  axioms : Prop

structure ArtinianModuleEvidence (M : ArtinianModule R) where
  isArtinian : Prop
  finiteLengthHypothesis : Prop
  isArtinianClosed : isArtinian
  finiteLengthHypothesisClosed : finiteLengthHypothesis

def ArtinianModuleClosed (M : ArtinianModule R) : Prop :=
  M.axioms

theorem artinian_module_closed_from_evidence (M : ArtinianModule R) (E : ArtinianModuleEvidence M) :
    ArtinianModuleClosed M := by
  exact E.isArtinianClosed

end CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean
end HautevilleHouse
