import BarCobarConstructionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BarCobarWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.resolutionCondition

end BarCobarConstructionsCanonicalLaneLean
end HautevilleHouse