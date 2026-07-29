import canonicalLaneMathlib.AdmissibleClass
import CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean.ArtinianModuleStructure

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean

theorem krull_intersection_artinian (R : Type u) [CommRing R] (I : Ideal R) (M : ArtinianModule R) :
    (⋂ n : ℕ, (I ^ n) • M.carrier) = (0 : Set M.carrier) := by
  sorry

end CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean
end HautevilleHouse
