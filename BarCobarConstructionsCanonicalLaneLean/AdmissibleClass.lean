import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BarCobarAdmittedObject where
  dgAlgebra : Type u
  dgCoalgebra : Type v
  augmentation : Prop
  counit : Prop
  resolutionCondition : Prop

structure BarCobarEndgameState where
  object : BarCobarAdmittedObject

structure AdmissibleClass where
  object : BarCobarAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BarCobarWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def BarCobarWitnessClosed (O : BarCobarAdmittedObject) : Prop :=
  O.resolutionCondition

end BarCobarConstructionsCanonicalLaneLean
end HautevilleHouse