import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ComplexSupergeometryAdmittedObject where
  supermanifold : Type u
  complexStructure : ComplexStructurePackage
  superRiemannianCurvature : SuperRiemannianCurvaturePackage
  supermoduli : SupermoduliSpacePackage
  superRiemannSurface : SuperRiemannSurfacePackage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure AdmissibleClass where
  object : ComplexSupergeometryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (ComplexStructureClosed A.object.complexStructure) ∧
  (SuperRiemannianCurvatureClosed A.object.superRiemannianCurvature) ∧
  (SupermoduliSpaceClosed A.object.supermoduli) ∧
  (SuperRiemannSurfaceClosed A.object.superRiemannSurface)

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse