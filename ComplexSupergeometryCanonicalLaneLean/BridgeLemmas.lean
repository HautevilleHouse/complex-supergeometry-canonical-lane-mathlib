import ComplexSupergeometryCanonicalLaneLean.ComplexSupergeometryObjects

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ComplexSupergeometryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse