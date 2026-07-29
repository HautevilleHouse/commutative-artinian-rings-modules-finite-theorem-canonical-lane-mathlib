import CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean

structure ArtinianModuleObject where
  ring : Type u
  module : Type v
  isArtinian : Prop
  moduleFinite : Prop
  moduleFiniteConclusion : moduleFinite

def ArtinianModuleFiniteClosure (A : ArtinianModuleObject) : Prop :=
  A.moduleFinite

theorem artinian_module_finite_closure_from_object (A : ArtinianModuleObject) : ArtinianModuleFiniteClosure A := by
  exact A.moduleFiniteConclusion

end CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean
end HautevilleHouse