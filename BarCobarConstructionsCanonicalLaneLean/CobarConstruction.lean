import BarCobarConstructionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsCanonicalLaneLean

structure CobarConstructionPackage where
  underlyingCoalgebra : Type u
  coaugmentation : Prop
  cobarComplex : Type v
  barResolution : Prop
  steenrodCoproduct : Prop

structure CobarConstructionEvidence (C : CobarConstructionPackage) where
  coaugmentationClosed : C.coaugmentation
  cobarComplexClosed : C.cobarComplex
  barResolutionClosed : C.barResolution
  steenrodCoproductClosed : C.steenrodCoproduct

def CobarConstructionClosed (C : CobarConstructionPackage) : Prop :=
  C.coaugmentation ∧ C.cobarComplex ∧ C.barResolution ∧ C.steenrodCoproduct

theorem cobar_construction_closed_from_evidence
    (C : CobarConstructionPackage) (E : CobarConstructionEvidence C) :
    CobarConstructionClosed C := by
  exact And.intro E.coaugmentationClosed
    (And.intro E.cobarComplexClosed
      (And.intro E.barResolutionClosed E.steenrodCoproductClosed))

end BarCobarConstructionsCanonicalLaneLean
end HautevilleHouse