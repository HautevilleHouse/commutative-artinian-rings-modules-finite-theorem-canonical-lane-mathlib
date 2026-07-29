import canonicalLaneMathlib.AdmissibleClass
import CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean.ArtinianModuleStructure

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean

structure JacobsonRadical (R : Type u) [CommRing R] where
  ideal : Set R
  isRadical : Prop
  evidence : isRadical

theorem artinian_ring_nilpotent_jacobson (R : Type u) [CommRing R] (J : JacobsonRadical R) (artinian : Prop) :
    Nilpotent J.ideal := by
  sorry

end CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean
end HautevilleHouse
