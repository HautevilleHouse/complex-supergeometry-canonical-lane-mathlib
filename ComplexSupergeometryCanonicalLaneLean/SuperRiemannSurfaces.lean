import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

structure SuperRiemannSurfacePackage where
  bosonicRiemannSurface : Type u
  spinBundle : Type v
  fermionicSections : Type w
  superRiemannSurfaceStructure : Prop
  susyTransformation : Prop
  superRiemannSurfaceStructureClosed : superRiemannSurfaceStructure
  susyTransformationClosed : susyTransformation

structure SuperRiemannSurfaceEvidence (S : SuperRiemannSurfacePackage) where
  superRiemannSurfaceStructureClosed : S.superRiemannSurfaceStructure
  susyTransformationClosed : S.susyTransformation

def SuperRiemannSurfaceClosed (S : SuperRiemannSurfacePackage) : Prop :=
  S.superRiemannSurfaceStructure ∧ S.susyTransformation

theorem super_riemann_surface_closed_from_evidence (S : SuperRiemannSurfacePackage)
    (E : SuperRiemannSurfaceEvidence S) : SuperRiemannSurfaceClosed S := by
  exact And.intro E.superRiemannSurfaceStructureClosed E.susyTransformationClosed

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse