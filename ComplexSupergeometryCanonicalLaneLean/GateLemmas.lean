import ComplexSupergeometryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse