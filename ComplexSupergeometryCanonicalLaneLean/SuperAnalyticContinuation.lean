import ComplexSupergeometryCanonicalLaneLean.SuperRiemannSurface

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

structure SuperAnalyticContinuation where
  sourceSupermanifold : ComplexSupermanifold
  targetSupermanifold : ComplexSupermanifold
  superholomorphicMap : Prop
  continuationProperty : Prop
  maximumSuperPrinciple : Prop
  superIdentityTheorem : Prop

def SuperAnalyticContinuationClosed (A : SuperAnalyticContinuation) : Prop :=
  A.superholomorphicMap ∧ A.continuationProperty ∧ A.maximumSuperPrinciple ∧ A.superIdentityTheorem

structure SuperAnalyticContinuationEvidence (A : SuperAnalyticContinuation) where
  superholomorphicMapClosed : A.superholomorphicMap
  continuationPropertyClosed : A.continuationProperty
  maximumSuperPrincipleClosed : A.maximumSuperPrinciple
  superIdentityTheoremClosed : A.superIdentityTheorem

theorem super_analytic_continuation_closed_from_evidence (A : SuperAnalyticContinuation)
    (E : SuperAnalyticContinuationEvidence A) : SuperAnalyticContinuationClosed A := by
  exact And.intro E.superholomorphicMapClosed
    (And.intro E.continuationPropertyClosed
      (And.intro E.maximumSuperPrincipleClosed E.superIdentityTheoremClosed))

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse