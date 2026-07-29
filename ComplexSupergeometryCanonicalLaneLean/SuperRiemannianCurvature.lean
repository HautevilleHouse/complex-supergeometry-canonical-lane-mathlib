import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

structure SuperRiemannianCurvaturePackage where
  superMetric : Type u
  superConnection : Type v
  superRiemannTensor : Type w
  superRicciTensor : Type x
  superScalarCurvature : Type y
  metricSuperSmooth : Prop
  superRiemannTensorLawful : Prop
  superRicciTensorContracted : Prop
  superScalarCurvatureTraced : Prop
  metricSuperSmoothClosed : metricSuperSmooth
  superRiemannTensorLawfulClosed : superRiemannTensorLawful
  superRicciTensorContractedClosed : superRicciTensorContracted
  superScalarCurvatureTracedClosed : superScalarCurvatureTraced

structure SuperRiemannianCurvatureEvidence (G : SuperRiemannianCurvaturePackage) where
  metricSuperSmoothClosed : G.metricSuperSmooth
  superRiemannTensorLawfulClosed : G.superRiemannTensorLawful
  superRicciTensorContractedClosed : G.superRicciTensorContracted
  superScalarCurvatureTracedClosed : G.superScalarCurvatureTraced

def SuperRiemannianCurvatureClosed (G : SuperRiemannianCurvaturePackage) : Prop :=
  G.metricSuperSmooth ∧ G.superRiemannTensorLawful ∧
  G.superRicciTensorContracted ∧ G.superScalarCurvatureTraced

theorem super_riemannian_curvature_closed_from_evidence
    (G : SuperRiemannianCurvaturePackage) (E : SuperRiemannianCurvatureEvidence G) :
    SuperRiemannianCurvatureClosed G := by
  exact And.intro E.metricSuperSmoothClosed (And.intro E.superRiemannTensorLawfulClosed
    (And.intro E.superRicciTensorContractedClosed E.superScalarCurvatureTracedClosed))

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse