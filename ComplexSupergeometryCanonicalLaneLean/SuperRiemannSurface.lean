import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

structure SuperRiemannSurfacePackage where
  supermanifold : ComplexSupermanifoldPackage
  dimensionOneComplex : Prop
  superConformalStructure : Prop
  divisorSheaf : Type u
  superAbelianDifferential : Type v

def superRiemannSurfaceClosed (S : SuperRiemannSurfacePackage) : Prop :=
  ComplexSupermanifoldClosed S.supermanifold ∧ S.dimensionOneComplex ∧
  S.superConformalStructure

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse
