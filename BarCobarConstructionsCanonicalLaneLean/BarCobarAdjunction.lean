import BarCobarConstructionsCanonicalLaneLean.BarConstruction
import BarCobarConstructionsCanonicalLaneLean.CobarConstruction

namespace HautevilleHouse
namespace BarCobarConstructionsCanonicalLaneLean

structure BarCobarAdjunctionPackage (A : BarCobarAdmissibleClass) where
  barPackage : BarConstructionPackage A
  cobarPackage : CobarConstructionPackage A
  adjunctionUnit : Prop
  adjunctionCounit : Prop
  adjunctionIso : Prop
  koszulResolution : Prop

structure BarCobarAdjunctionEvidence (A : BarCobarAdmissibleClass) (P : BarCobarAdjunctionPackage A) where
  adjunctionUnitClosed : P.adjunctionUnit
  adjunctionCounitClosed : P.adjunctionCounit
  adjunctionIsoClosed : P.adjunctionIso
  koszulResolutionClosed : P.koszulResolution

def BarCobarAdjunctionClosed (A : BarCobarAdmissibleClass) (P : BarCobarAdjunctionPackage A) : Prop :=
  P.adjunctionUnit ∧ P.adjunctionCounit ∧ P.adjunctionIso ∧ P.koszulResolution

theorem bar_cobar_adjunction_closed_from_evidence (A : BarCobarAdmissibleClass) (P : BarCobarAdjunctionPackage A) (E : BarCobarAdjunctionEvidence A P) :
    BarCobarAdjunctionClosed A P := by
  exact And.intro E.adjunctionUnitClosed (And.intro E.adjunctionCounitClosed (And.intro E.adjunctionIsoClosed E.koszulResolutionClosed))

end BarCobarConstructionsCanonicalLaneLean
end HautevilleHouse