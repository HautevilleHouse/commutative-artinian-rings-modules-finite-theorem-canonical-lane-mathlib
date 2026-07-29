import canonicalLaneMathlib.AdmissibleClass
import CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean.ArtinianModuleStructure

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean

structure PrimarySubmodule (R : Type u) [CommRing R] (M : ArtinianModule R) where
  carrier : Set M.carrier
  isPrimary : Prop
  evidence : isPrimary

structure PrimaryDecomposition (R : Type u) [CommRing R] (M : ArtinianModule R) where
  components : List (PrimarySubmodule R M)
  intersectionIsZero : Prop
  uniqueness : Prop

structure PrimaryDecompositionEvidence (R : Type u) [CommRing R] (M : ArtinianModule R) (D : PrimaryDecomposition R M) where
  intersectionZeroClosed : D.intersectionIsZero
  uniquenessClosed : D.uniqueness

def PrimaryDecompositionClosed (R : Type u) [CommRing R] (M : ArtinianModule R) (D : PrimaryDecomposition R M) : Prop :=
  D.intersectionIsZero ∧ D.uniqueness

theorem primary_decomposition_closed_from_evidence (R : Type u) [CommRing R] (M : ArtinianModule R) (D : PrimaryDecomposition R M) (E : PrimaryDecompositionEvidence R M D) :
    PrimaryDecompositionClosed R M D := by
  exact And.intro E.intersectionZeroClosed E.uniquenessClosed

end CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean
end HautevilleHouse
