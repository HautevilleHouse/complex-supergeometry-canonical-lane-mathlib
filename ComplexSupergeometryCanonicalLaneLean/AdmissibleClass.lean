import ComplexSupergeometryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

structure AdmissibleClass where
  object : SupergeometryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SupergeometryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse
