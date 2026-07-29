import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean

structure CommutativeArtinianRing where
  carrier : Type u
  ring : Ring carrier
  artinian : Prop
  noetherian : Prop
  zeroSocle : Prop
  nilradicalNilpotent : Prop

structure CommutativeArtinianRingEvidence (A : CommutativeArtinianRing) where
  ringClosed : A.ring = A.ring
  artinianClosed : A.artinian
  noetherianClosed : A.noetherian
  zeroSocleClosed : A.zeroSocle
  nilradicalNilpotentClosed : A.nilradicalNilpotent

def CommutativeArtinianRingClosed (A : CommutativeArtinianRing) : Prop :=
  A.ring = A.ring ∧ A.artinian ∧ A.noetherian ∧ A.zeroSocle ∧ A.nilradicalNilpotent

theorem commutative_artinian_ring_closed_from_evidence
    (A : CommutativeArtinianRing) (E : CommutativeArtinianRingEvidence A) :
    CommutativeArtinianRingClosed A := by
  exact And.intro E.ringClosed
    (And.intro E.artinianClosed
      (And.intro E.noetherianClosed
        (And.intro E.zeroSocleClosed E.nilradicalNilpotentClosed)))

end HautevilleHouse
end CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean
