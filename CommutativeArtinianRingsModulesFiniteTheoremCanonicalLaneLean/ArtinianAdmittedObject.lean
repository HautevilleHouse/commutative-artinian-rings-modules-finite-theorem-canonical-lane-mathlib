import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean

structure ArtinianSpace where
  carrier : Type u
  artinianRingStructure : ArtinianRing
  moduleStructure : Module (artinianRingStructure.carrier) carrier

structure ArtinianAdmittedObject where
  space : ArtinianSpace
  finiteGeneration : Prop
  moduleFiniteLength : Prop
  conclusion : moduleFiniteLength

def ArtinianWitnessClosed (O : ArtinianAdmittedObject) : Prop :=
  O.moduleFiniteLength

end CommutativeArtinianRingsModulesFiniteTheoremCanonicalLaneLean
end HautevilleHouse