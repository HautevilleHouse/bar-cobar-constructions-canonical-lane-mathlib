import BarCobarConstructionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsCanonicalLaneLean

structure BarConstructionPackage where
  underlyingAlgebra : Type u
  augmentationIdeal : Prop
  barComplex : Type v
  cobarResolution : Prop
  alexanderWhitney : Prop

structure BarConstructionEvidence (B : BarConstructionPackage) where
  augmentationIdealClosed : B.augmentationIdeal
  barComplexClosed : B.barComplex
  cobarResolutionClosed : B.cobarResolution
  alexanderWhitneyClosed : B.alexanderWhitney

def BarConstructionClosed (B : BarConstructionPackage) : Prop :=
  B.augmentationIdeal ∧ B.barComplex ∧ B.cobarResolution ∧ B.alexanderWhitney

theorem bar_construction_closed_from_evidence
    (B : BarConstructionPackage) (E : BarConstructionEvidence B) :
    BarConstructionClosed B := by
  exact And.intro E.augmentationIdealClosed
    (And.intro E.barComplexClosed
      (And.intro E.cobarResolutionClosed E.alexanderWhitneyClosed))

end BarCobarConstructionsCanonicalLaneLean
end HautevilleHouse