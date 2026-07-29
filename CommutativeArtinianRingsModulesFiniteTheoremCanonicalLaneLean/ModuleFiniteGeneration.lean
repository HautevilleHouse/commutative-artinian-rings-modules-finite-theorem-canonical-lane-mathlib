import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeArtinianRingsModulesFiniteTheorem.FiniteLengthModule

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheorem

structure ModuleFiniteGeneration (R : Type u) [CommRing R] (M : ArtinianModule R) (F : FiniteLengthModule R M) where
  finiteGeneration : Prop
  finitePresentation : Prop
  noetherianProperty : Prop
  finiteGenerationClosed : finiteGeneration
  finitePresentationClosed : finitePresentation
  noetherianPropertyClosed : noetherianProperty

structure ModuleFiniteGenerationEvidence (R : Type u) [CommRing R] (M : ArtinianModule R) (F : FiniteLengthModule R M) (G : ModuleFiniteGeneration R M F) where
  finiteGenerationClosed : G.finiteGeneration
  finitePresentationClosed : G.finitePresentation
  noetherianPropertyClosed : G.noetherianProperty

def ModuleFiniteGenerationClosed (R : Type u) [CommRing R] (M : ArtinianModule R) (F : FiniteLengthModule R M) (G : ModuleFiniteGeneration R M F) : Prop :=
  G.finiteGeneration ∧ G.finitePresentation ∧ G.noetherianProperty

theorem module_finite_generation_closed_from_evidence (R : Type u) [CommRing R] (M : ArtinianModule R) (F : FiniteLengthModule R M) (G : ModuleFiniteGeneration R M F) (E : ModuleFiniteGenerationEvidence R M F G) : ModuleFiniteGenerationClosed R M F G :=
  And.intro E.finiteGenerationClosed (And.intro E.finitePresentationClosed E.noetherianPropertyClosed)

end CommutativeArtinianRingsModulesFiniteTheorem
end HautevilleHouse
