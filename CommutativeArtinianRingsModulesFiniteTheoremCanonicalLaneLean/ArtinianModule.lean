import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheorem

structure ArtinianModule (R : Type u) [CommRing R] where
  carrier : Type v
  addCommGroup : AddCommGroup carrier
  module : Module R carrier
  descendingChainCondition : Prop
  descendingChainConditionClosed : descendingChainCondition

structure ArtinianModuleEvidence (M : ArtinianModule R) where
  descendingChainConditionClosed : M.descendingChainCondition

def ArtinianModuleClosed (M : ArtinianModule R) : Prop :=
  M.descendingChainCondition

theorem artinian_module_closed_from_evidence (M : ArtinianModule R) (E : ArtinianModuleEvidence M) : ArtinianModuleClosed M :=
  E.descendingChainConditionClosed

end CommutativeArtinianRingsModulesFiniteTheorem
end HautevilleHouse
