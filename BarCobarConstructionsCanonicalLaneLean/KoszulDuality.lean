import BarCobarConstructionsCanonicalLaneLean.BarConstruction
import BarCobarConstructionsCanonicalLaneLean.CobarConstruction

namespace HautevilleHouse
namespace BarCobarConstructionsCanonicalLaneLean

structure KoszulDualityPackage (B : BarConstructionPackage) (C : CobarConstructionPackage) where
  koszulPairing : Prop
  derivedEquivalence : Prop
  barCobarAdjunction : Prop
  koszulDuality : Prop

structure KoszulDualityEvidence {B : BarConstructionPackage} {C : CobarConstructionPackage}
    (K : KoszulDualityPackage B C) where
  koszulPairingClosed : K.koszulPairing
  derivedEquivalenceClosed : K.derivedEquivalence
  barCobarAdjunctionClosed : K.barCobarAdjunction
  koszulDualityClosed : K.koszulDuality

def KoszulDualityClosed {B : BarConstructionPackage} {C : CobarConstructionPackage}
    (K : KoszulDualityPackage B C) : Prop :=
  K.koszulPairing ∧ K.derivedEquivalence ∧ K.barCobarAdjunction ∧ K.koszulDuality

theorem koszul_duality_closed_from_evidence
    {B : BarConstructionPackage} {C : CobarConstructionPackage}
    (K : KoszulDualityPackage B C) (E : KoszulDualityEvidence K) :
    KoszulDualityClosed K := by
  exact And.intro E.koszulPairingClosed
    (And.intro E.derivedEquivalenceClosed
      (And.intro E.barCobarAdjunctionClosed E.koszulDualityClosed))

end BarCobarConstructionsCanonicalLaneLean
end HautevilleHouse