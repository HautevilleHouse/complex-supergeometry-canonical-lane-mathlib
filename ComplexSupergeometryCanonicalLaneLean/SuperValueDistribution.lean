import ComplexSupergeometryCanonicalLaneLean.SuperAnalyticContinuation

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

structure SuperValueDistribution where
  supermeromorphicFunction : Type
  superPicardTheorem : Prop
  superNevanlinnaTheory : Prop
  superDefectRelation : Prop

def SuperValueDistributionClosed (V : SuperValueDistribution) : Prop :=
  V.superPicardTheorem ∧ V.superNevanlinnaTheory ∧ V.superDefectRelation

structure SuperValueDistributionEvidence (V : SuperValueDistribution) where
  superPicardTheoremClosed : V.superPicardTheorem
  superNevanlinnaTheoryClosed : V.superNevanlinnaTheory
  superDefectRelationClosed : V.superDefectRelation

theorem super_value_distribution_closed_from_evidence (V : SuperValueDistribution)
    (E : SuperValueDistributionEvidence V) : SuperValueDistributionClosed V := by
  exact And.intro E.superPicardTheoremClosed
    (And.intro E.superNevanlinnaTheoryClosed E.superDefectRelationClosed)

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse