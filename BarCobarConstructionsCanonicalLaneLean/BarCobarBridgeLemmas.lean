import BarCobarConstructionsCanonicalLaneLean.BarCobarAdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsCanonicalLaneLean

def BarCobarWitnessClosed (O : BarCobarAdmittedObject) : Prop :=
  O.quasiIsomorphism

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BarCobarWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BarCobarConstructionsCanonicalLaneLean
end HautevilleHouse