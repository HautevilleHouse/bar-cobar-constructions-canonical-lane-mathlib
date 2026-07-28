import BarCobarConstructionsCanonicalLaneLean.BarCobarFinalTheorem
import CanonicalLaneMathlibCore
import Mathlib.Algebra.Homology.DifferentialComplex

namespace HautevilleHouse
namespace BarCobarConstructionsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BarCobarSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BarCobarAdmittedObject where
  space : BarCobarSpace
  simplyConnected : Prop
  resolutionType : String
  coalgebraModel : Type
  barComplexDefined : Prop
  cobarComplexDefined : Prop
  equivalenceRealized : Prop
  conclusion : equivalenceRealized

structure BarCobarEndgameState where
  object : BarCobarAdmittedObject

def BarCobarWitnessClosed (O : BarCobarAdmittedObject) : Prop :=
  O.equivalenceRealized

end BarCobarConstructionsCanonicalLaneLean
end HautevilleHouse