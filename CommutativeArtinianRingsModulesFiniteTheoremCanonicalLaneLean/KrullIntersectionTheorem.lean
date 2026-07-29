import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeArtinianRingsModulesFiniteTheorem.HopkinsLevitzkiTheorem

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheorem

structure KrullIntersectionTheorem (R : Type u) [CommRing R] (M : ArtinianModule R) (F : FiniteLengthModule R M) (G : ModuleFiniteGeneration R M F) (H : HopkinsLevitzkiTheorem R M F G) where
  intersectionOfPowers : Prop
  artinianRingIdealIntersection : Prop
  intersectionOfPowersClosed : intersectionOfPowers
  artinianRingIdealIntersectionClosed : artinianRingIdealIntersection

structure KrullIntersectionTheoremEvidence (R : Type u) [CommRing R] (M : ArtinianModule R) (F : FiniteLengthModule R M) (G : ModuleFiniteGeneration R M F) (H : HopkinsLevitzkiTheorem R M F G) (K : KrullIntersectionTheorem R M F G H) where
  intersectionOfPowersClosed : K.intersectionOfPowers
  artinianRingIdealIntersectionClosed : K.artinianRingIdealIntersection

def KrullIntersectionTheoremClosed (R : Type u) [CommRing R] (M : ArtinianModule R) (F : FiniteLengthModule R M) (G : ModuleFiniteGeneration R M F) (H : HopkinsLevitzkiTheorem R M F G) (K : KrullIntersectionTheorem R M F G H) : Prop :=
  K.intersectionOfPowers ∧ K.artinianRingIdealIntersection

theorem krull_intersection_theorem_closed_from_evidence (R : Type u) [CommRing R] (M : ArtinianModule R) (F : FiniteLengthModule R M) (G : ModuleFiniteGeneration R M F) (H : HopkinsLevitzkiTheorem R M F G) (K : KrullIntersectionTheorem R M F G H) (E : KrullIntersectionTheoremEvidence R M F G H K) : KrullIntersectionTheoremClosed R M F G H K :=
  And.intro E.intersectionOfPowersClosed E.artinianRingIdealIntersectionClosed

end CommutativeArtinianRingsModulesFiniteTheorem
end HautevilleHouse
