import BarCobarConstructionsCanonicalLaneLean.BarCobarMathlibObjects

namespace HautevilleHouse
namespace BarCobarConstructionsCanonicalLaneLean

structure BarCobarMathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def barCobarMathlibProofObligation : BarCobarMathlibProofObligation := {
  sourceKey := sourceRepository,
  theoremObject := sourceDescription,
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

def barCobarCommonCoreProjectionLawAvailable : Prop :=
  forall {X : Type} [Add X] [Sub X] (L : AdditiveLane X),
    L.xNext = L.state + L.projection.toFun L.delta

theorem mathlib_bar_cobar_common_core_projection_law_checked :
    barCobarCommonCoreProjectionLawAvailable := by
  intro X instAdd instSub L
  exact AdditiveLane.x_next_eq L

def barCobarTheoremSpecificEndgamePilotClosed : Prop :=
  forall A : BarCobarAdmissibleClass, ConstrainedBarCobarClosure A

theorem bar_cobar_theorem_specific_endgame_pilot_checked :
    barCobarTheoremSpecificEndgamePilotClosed := by
  intro A
  exact constrained_bar_cobar_endgame A

end BarCobarConstructionsCanonicalLaneLean
end HautevilleHouse