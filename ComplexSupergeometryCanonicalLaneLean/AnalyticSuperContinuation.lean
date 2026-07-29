import ComplexSupergeometryCanonicalLaneLean.ComplexSupermanifold

/-!
# Analytic Super Continuation Package
-/

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

structure AnalyticSuperContinuationPackage {C : ComplexSupermanifoldPackage} where
  superFunctionDefinedLocally : Prop
  superAnalyticExtensionExists : Prop
  superMonodromyTheoremHolds : Prop
  superIdentityTheoremHolds : Prop
  superNaturalBoundary : Prop

structure AnalyticSuperContinuationEvidence {C : ComplexSupermanifoldPackage}
    (A : AnalyticSuperContinuationPackage C) where
  superFunctionDefinedLocallyClosed : A.superFunctionDefinedLocally
  superAnalyticExtensionExistsClosed : A.superAnalyticExtensionExists
  superMonodromyTheoremHoldsClosed : A.superMonodromyTheoremHolds
  superIdentityTheoremHoldsClosed : A.superIdentityTheoremHolds
  superNaturalBoundaryClosed : A.superNaturalBoundary

def AnalyticSuperContinuationClosed {C : ComplexSupermanifoldPackage}
    (A : AnalyticSuperContinuationPackage C) : Prop :=
  A.superFunctionDefinedLocally ∧ A.superAnalyticExtensionExists ∧
  A.superMonodromyTheoremHolds ∧ A.superIdentityTheoremHolds ∧ A.superNaturalBoundary

theorem analytic_super_continuation_closed_from_evidence
    {C : ComplexSupermanifoldPackage} (A : AnalyticSuperContinuationPackage C)
    (E : AnalyticSuperContinuationEvidence A) : AnalyticSuperContinuationClosed A := by
  exact And.intro E.superFunctionDefinedLocallyClosed
    (And.intro E.superAnalyticExtensionExistsClosed
      (And.intro E.superMonodromyTheoremHoldsClosed
        (And.intro E.superIdentityTheoremHoldsClosed E.superNaturalBoundaryClosed)))

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse