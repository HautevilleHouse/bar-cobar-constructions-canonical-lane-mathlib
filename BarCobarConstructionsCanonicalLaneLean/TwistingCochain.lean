import BarCobarConstructionsCanonicalLaneLean.CobarConstruction

namespace HautevilleHouse
namespace BarCobarConstructionsCanonicalLaneLean

structure TwistingCochainPackage (A : AdmissibleClass) where
  twistingCochain : Type u
  mcClearyCondition : Prop
  twistingCochainDefined : Prop

structure TwistingCochainEvidence (A : AdmissibleClass) (P : TwistingCochainPackage A) where
  mcClearyConditionClosed : P.mcClearyCondition
  twistingCochainDefinedClosed : P.twistingCochainDefined

def TwistingCochainClosed (A : AdmissibleClass) (P : TwistingCochainPackage A) : Prop :=
  P.mcClearyCondition ∧ P.twistingCochainDefined

theorem twisting_cochain_closed_from_evidence (A : AdmissibleClass) (P : TwistingCochainPackage A) (E : TwistingCochainEvidence A P) :
    TwistingCochainClosed A P := by
  exact And.intro E.mcClearyConditionClosed E.twistingCochainDefinedClosed

end BarCobarConstructionsCanonicalLaneLean
end HautevilleHouse