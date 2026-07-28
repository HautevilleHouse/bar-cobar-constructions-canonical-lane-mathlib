import BarCobarConstructionsCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib.Core

namespace HautevilleHouse
namespace BarCobarConstructionsCanonicalLaneLean

open canonicalLaneMathlib.Core

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "bar-cobar-constructions-canonical-lane",
  theoremObject := "Bar-Cobar Constructions",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific BarCobar endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

end BarCobarConstructionsCanonicalLaneLean
end HautevilleHouse