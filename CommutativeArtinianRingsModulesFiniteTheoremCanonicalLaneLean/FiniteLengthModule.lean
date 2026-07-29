import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeArtinianRingsModulesFiniteTheorem.ArtinianModule

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheorem

structure FiniteLengthModule (R : Type u) [CommRing R] (M : ArtinianModule R) where
  compositionSeries : Prop
  finiteLength : Prop
  lengthFinite : finiteLength
  compositionSeriesClosed : compositionSeries
  finiteLengthClosed : lengthFinite

structure FiniteLengthModuleEvidence (M : ArtinianModule R) (F : FiniteLengthModule R M) where
  compositionSeriesClosed : F.compositionSeries
  finiteLengthClosed : F.finiteLength

def FiniteLengthModuleClosed (M : ArtinianModule R) (F : FiniteLengthModule R M) : Prop :=
  F.compositionSeries ∧ F.finiteLength

theorem finite_length_module_closed_from_evidence (M : ArtinianModule R) (F : FiniteLengthModule R M) (E : FiniteLengthModuleEvidence M F) : FiniteLengthModuleClosed M F :=
  And.intro E.compositionSeriesClosed E.finiteLengthClosed

end CommutativeArtinianRingsModulesFiniteTheorem
end HautevilleHouse
