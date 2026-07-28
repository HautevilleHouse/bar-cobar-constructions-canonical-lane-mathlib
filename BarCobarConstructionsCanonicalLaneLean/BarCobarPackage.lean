import BarCobarConstructionsCanonicalLaneLean.BarCobarMathlibObjects

/-!
# Bar-Cobar Constructions Package

This module defines the package structure for bar and cobar constructions.
-/

namespace HautevilleHouse
namespace BarCobarConstructionsCanonicalLaneLean

structure BarComplexPackage where
  algebraInput : Type u
  resolution : Prop
  differentials : Prop
  acyclic : Prop
  augmentation : Type v

def BarComplexClosed (P : BarComplexPackage) : Prop :=
  P.resolution ∧ P.differentials ∧ P.acyclic

structure CobarComplexPackage where
  coalgebraInput : Type u
  coaugmentation : Prop
  codifferentials : Prop
  coacyclic : Prop
  coaugmentationCoinduced : Prop

def CobarComplexClosed (Q : CobarComplexPackage) : Prop :=
  Q.coaugmentation ∧ Q.codifferentials ∧ Q.coacyclic ∧ Q.coaugmentationCoinduced

theorem bar_complex_closed_true (P : BarComplexPackage) (h : P.resolution ∧ P.differentials ∧ P.acyclic) : BarComplexClosed P := h

theorem cobar_complex_closed_true (Q : CobarComplexPackage) (h : Q.coaugmentation ∧ Q.codifferentials ∧ Q.coacyclic ∧ Q.coaugmentationCoinduced) : CobarComplexClosed Q := h

end BarCobarConstructionsCanonicalLaneLean
end HautevilleHouse