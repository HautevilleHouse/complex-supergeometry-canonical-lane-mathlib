import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

structure SuperRiemannUniformizationPackage where
  superRiemannSurface : SuperRiemannSurfacePackage
  universalCover : SuperRiemannSurfacePackage
  supergroupAction : Prop
  uniformizationIsSuperconformal : Prop
  monodromyRepresentation : Type u

structure SuperRiemannUniformizationEvidence (U : SuperRiemannUniformizationPackage) where
  supergroupActionClosed : U.supergroupAction
  uniformizationIsSuperconformalClosed : U.uniformizationIsSuperconformal

def SuperRiemannUniformizationClosed (U : SuperRiemannUniformizationPackage) : Prop :=
  U.supergroupAction ∧ U.uniformizationIsSuperconformal

theorem super_riemann_uniformization_closed_from_evidence
    (U : SuperRiemannUniformizationPackage) (E : SuperRiemannUniformizationEvidence U) :
    SuperRiemannUniformizationClosed U := by
  exact And.intro E.supergroupActionClosed E.uniformizationIsSuperconformalClosed

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse
