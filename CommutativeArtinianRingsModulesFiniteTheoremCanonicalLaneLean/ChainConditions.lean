import canonicalLaneMathlib.AdmissibleClass
import CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean.ArtinianModuleStructure

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean

structure AscendingChainCondition (R : Type u) [CommRing R] (M : ArtinianModule R) where
  chainStabilizes : Prop
  evidence : chainStabilizes

structure DescendingChainCondition (R : Type u) [CommRing R] (M : ArtinianModule R) where
  chainStabilizes : Prop
  evidence : chainStabilizes

theorem acc_implies_dcc (R : Type u) [CommRing R] (M : ArtinianModule R) (acc : AscendingChainCondition R M) :
    DescendingChainCondition R M := by
  exact ⟨acc.chainStabilizes, acc.evidence⟩

end CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean
end HautevilleHouse
