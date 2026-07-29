import canonicalLaneMathlib.AdmissibleClass
import CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean.ArtinianModuleStructure

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean

structure Submodule (R : Type u) [CommRing R] (M : ArtinianModule R) where
  carrier : Set M.carrier
  axioms : Prop

structure CompositionSeries (R : Type u) [CommRing R] (M : ArtinianModule R) where
  length : Nat
  submodules : Fin (length + 1) → Submodule R M
  strictInclusions : Prop
  simpleFactors : Prop

structure CompositionSeriesEvidence (R : Type u) [CommRing R] (M : ArtinianModule R) (C : CompositionSeries R M) where
  lengthFinite : C.length < ℕ
  inclusionsClosed : C.strictInclusions
  factorsClosed : C.simpleFactors

def CompositionSeriesClosed (R : Type u) [CommRing R] (M : ArtinianModule R) (C : CompositionSeries R M) : Prop :=
  C.strictInclusions ∧ C.simpleFactors

theorem composition_series_closed_from_evidence (R : Type u) [CommRing R] (M : ArtinianModule R) (C : CompositionSeries R M) (E : CompositionSeriesEvidence R M C) :
    CompositionSeriesClosed R M C := by
  exact And.intro E.inclusionsClosed E.factorsClosed

end CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean
end HautevilleHouse
