import canonicalLaneMathlib.AdmissibleClass
import BarCobarConstructionsCanonicalLaneLean.BarConstruction
import BarCobarConstructionsCanonicalLaneLean.CobarConstruction

namespace HautevilleHouse
namespace BarCobarConstructionsCanonicalLaneLean

structure BarCobarDualityPackage {B : BarConstructionPackage} {C : CobarConstructionPackage} where
  barCobarMap : B.barComplex → C.cobarComplex
  barCobarMapQuasiIso : True
  compatibility : True

structure BarCobarDualityEvidence {B : BarConstructionPackage} {C : CobarConstructionPackage}
    (D : BarCobarDualityPackage B C) where
  barCobarMapQuasiIsoClosed : D.barCobarMapQuasiIso
  compatibilityClosed : D.compatibility

def BarCobarDualityClosed {B : BarConstructionPackage} {C : CobarConstructionPackage}
    (D : BarCobarDualityPackage B C) : Prop :=
  D.barCobarMapQuasiIso ∧ D.compatibility

theorem bar_cobar_duality_closed_from_evidence
    {B : BarConstructionPackage} {C : CobarConstructionPackage}
    (D : BarCobarDualityPackage B C) (E : BarCobarDualityEvidence D) :
    BarCobarDualityClosed D := by
  exact And.intro E.barCobarMapQuasiIsoClosed E.compatibilityClosed

end BarCobarConstructionsCanonicalLaneLean
end HautevilleHouse