import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EastSoutheastAsianMathCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SoutheastAsianWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EastSoutheastAsianMathCanonicalLaneLean
end HautevilleHouse