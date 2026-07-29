import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

structure ComplexSupermanifoldPackage where
  baseManifold : Type u
  topology : TopologicalSpace baseManifold
  complexStructure : Prop
  oddFiber : baseManifold → Type v
  oddRank : ℕ
  transitionFunctorsHolomorphic : Prop
  transitionFunctorsSupercommuting : Prop
  globalChartCompatible : Prop

structure ComplexSupermanifoldEvidence (C : ComplexSupermanifoldPackage) where
  complexStructureClosed : C.complexStructure
  oddRankClosed : C.oddRank = 1 ∨ C.oddRank = 2
  transitionFunctorsHolomorphicClosed : C.transitionFunctorsHolomorphic
  transitionFunctorsSupercommutingClosed : C.transitionFunctorsSupercommuting
  globalChartCompatibleClosed : C.globalChartCompatible

def ComplexSupermanifoldClosed (C : ComplexSupermanifoldPackage) : Prop :=
  C.complexStructure ∧ C.oddRank = 1 ∨ C.oddRank = 2 ∧
  C.transitionFunctorsHolomorphic ∧ C.transitionFunctorsSupercommuting ∧
  C.globalChartCompatible

theorem complex_supermanifold_closed_from_evidence
    (C : ComplexSupermanifoldPackage) (E : ComplexSupermanifoldEvidence C) :
    ComplexSupermanifoldClosed C := by
  exact And.intro E.complexStructureClosed (
    And.intro E.oddRankClosed (
      And.intro E.transitionFunctorsHolomorphicClosed (
        And.intro E.transitionFunctorsSupercommutingClosed
          E.globalChartCompatibleClosed)))

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse
