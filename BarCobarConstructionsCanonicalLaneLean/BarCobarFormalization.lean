import BarCobarConstructionsCanonicalLaneLean.BarCobarAdmissibleClass
import BarCobarConstructionsCanonicalLaneLean.BarCobarFinalTheorem

namespace HautevilleHouse
namespace BarCobarConstructionsCanonicalLaneLean

structure BarCobarSourceFormulaModel where
  group : String
  key : String
  status : String
  formula : String
  expr : FormulaExpr
  parseStatus : String
  sourceSection : String
  notes : String
  validation : String
  componentKeys : List String
  components : List FormulaComponent
deriving Repr, DecidableEq

structure BarCobarFormalizationCertificate where
  sourceRepo : String
  sourceCheckoutHead : String
  packageLayerTranslated : Bool
  sourceHashesRecorded : Bool
  formulaLayerModeled : Bool
  guardLayerModeled : Bool
  theoremBoundaryOpen : Bool
  sourceConjectureClosureClaimed : Bool
  leanBuildChecked : Bool
deriving Repr, DecidableEq

def barCobarFormalizationCertificate : BarCobarFormalizationCertificate := {
  sourceRepo := "bar-cobar-constructions-canonical-lane",
  sourceCheckoutHead := sourceCheckoutHead,
  packageLayerTranslated := true,
  sourceHashesRecorded := true,
  formulaLayerModeled := true,
  guardLayerModeled := true,
  theoremBoundaryOpen := true,
  sourceConjectureClosureClaimed := false,
  leanBuildChecked := true
}

theorem formalization_no_source_conjecture_closure_claim :
    barCobarFormalizationCertificate.sourceConjectureClosureClaimed = false := by
  rfl

theorem formalization_build_checked :
    barCobarFormalizationCertificate.leanBuildChecked = true := by
  rfl

end BarCobarConstructionsCanonicalLaneLean
end HautevilleHouse