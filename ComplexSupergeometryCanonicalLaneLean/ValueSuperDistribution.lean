import ComplexSupergeometryCanonicalLaneLean.ComplexSupermanifold

/-!
# Value Super Distribution Package
-/

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

structure ValueSuperDistributionPackage {C : ComplexSupermanifoldPackage} where
  superMeromorphicFunction : Type u
  superDivisor : Type v
  superPicardTheoremHolds : Prop
  superNevanlinnaTheory : Prop
  superDefectRelation : Prop
  superValueDistributionBounds : Prop

structure ValueSuperDistributionEvidence {C : ComplexSupermanifoldPackage}
    (V : ValueSuperDistributionPackage C) where
  superPicardTheoremHoldsClosed : V.superPicardTheoremHolds
  superNevanlinnaTheoryClosed : V.superNevanlinnaTheory
  superDefectRelationClosed : V.superDefectRelation
  superValueDistributionBoundsClosed : V.superValueDistributionBounds

def ValueSuperDistributionClosed {C : ComplexSupermanifoldPackage}
    (V : ValueSuperDistributionPackage C) : Prop :=
  V.superPicardTheoremHolds ∧ V.superNevanlinnaTheory ∧
  V.superDefectRelation ∧ V.superValueDistributionBounds

theorem value_super_distribution_closed_from_evidence
    {C : ComplexSupermanifoldPackage} (V : ValueSuperDistributionPackage C)
    (E : ValueSuperDistributionEvidence V) : ValueSuperDistributionClosed V := by
  exact And.intro E.superPicardTheoremHoldsClosed
    (And.intro E.superNevanlinnaTheoryClosed
      (And.intro E.superDefectRelationClosed E.superValueDistributionBoundsClosed))

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse