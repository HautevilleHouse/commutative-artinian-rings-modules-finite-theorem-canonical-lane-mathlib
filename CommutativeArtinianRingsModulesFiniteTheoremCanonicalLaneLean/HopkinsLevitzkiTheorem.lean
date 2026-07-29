import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeArtinianRingsModulesFiniteTheorem.ModuleFiniteGeneration

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheorem

structure HopkinsLevitzkiTheorem (R : Type u) [CommRing R] (M : ArtinianModule R) (F : FiniteLengthModule R M) (G : ModuleFiniteGeneration R M F) where
  jacobsonRadicalNilpotent : Prop
  artinianImpliesNoetherian : Prop
  finiteLengthCharacterization : Prop
  jacobsonRadicalNilpotentClosed : jacobsonRadicalNilpotent
  artinianImpliesNoetherianClosed : artinianImpliesNoetherian
  finiteLengthCharacterizationClosed : finiteLengthCharacterization

structure HopkinsLevitzkiTheoremEvidence (R : Type u) [CommRing R] (M : ArtinianModule R) (F : FiniteLengthModule R M) (G : ModuleFiniteGeneration R M F) (H : HopkinsLevitzkiTheorem R M F G) where
  jacobsonRadicalNilpotentClosed : H.jacobsonRadicalNilpotent
  artinianImpliesNoetherianClosed : H.artinianImpliesNoetherian
  finiteLengthCharacterizationClosed : H.finiteLengthCharacterization

def HopkinsLevitzkiTheoremClosed (R : Type u) [CommRing R] (M : ArtinianModule R) (F : FiniteLengthModule R M) (G : ModuleFiniteGeneration R M F) (H : HopkinsLevitzkiTheorem R M F G) : Prop :=
  H.jacobsonRadicalNilpotent ∧ H.artinianImpliesNoetherian ∧ H.finiteLengthCharacterization

theorem hopkins_levitzki_theorem_closed_from_evidence (R : Type u) [CommRing R] (M : ArtinianModule R) (F : FiniteLengthModule R M) (G : ModuleFiniteGeneration R M F) (H : HopkinsLevitzkiTheorem R M F G) (E : HopkinsLevitzkiTheoremEvidence R M F G H) : HopkinsLevitzkiTheoremClosed R M F G H :=
  And.intro E.jacobsonRadicalNilpotentClosed (And.intro E.artinianImpliesNoetherianClosed E.finiteLengthCharacterizationClosed)

end CommutativeArtinianRingsModulesFiniteTheorem
end HautevilleHouse
