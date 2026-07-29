import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean

structure KrullDimension (R : Type u) [Ring R] where
  dimension : Nat
  finiteChainCondition : Prop
  finiteChainConditionTerm : finiteChainCondition

structure KrullDimensionEvidence (K : KrullDimension R) where
  finiteChainConditionClosed : K.finiteChainCondition

def KrullDimensionClosed (K : KrullDimension R) : Prop :=
  K.finiteChainCondition

theorem krull_dimension_closed_from_evidence (K : KrullDimension R) (E : KrullDimensionEvidence K) :
    KrullDimensionClosed K := by
  exact E.finiteChainConditionClosed

end CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean
end HautevilleHouse