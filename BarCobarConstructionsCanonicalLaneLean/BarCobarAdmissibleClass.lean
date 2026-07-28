import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsCanonicalLaneLean

structure BarCobarAdmittedObject where
  chainComplex : Type
  differential : Type
  barConstruction : Type
  cobarConstruction : Type
  quasiIsomorphism : Prop
  conclusion : quasiIsomorphism

structure AdmissibleClass where
  object : BarCobarAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BarCobarWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BarCobarConstructionsCanonicalLaneLean
end HautevilleHouse