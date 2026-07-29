import ComplexSupergeometryCanonicalLaneLean.ComplexSupermanifold

/-!
# Riemann Super Mapping Package
-/

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

structure RiemannSuperMappingPackage {C : ComplexSupermanifoldPackage} where
  superSimplyConnected : Prop
  superDomainBoundary : Type u
  superConformalMapping : Type v
  superRiemannMappingExists : Prop
  superMappingUniqueness : Prop
  superMappingHolomorphic : Prop
  superMappingBiholomorphic : Prop

structure RiemannSuperMappingEvidence {C : ComplexSupermanifoldPackage}
    (R : RiemannSuperMappingPackage C) where
  superSimplyConnectedClosed : R.superSimplyConnected
  superRiemannMappingExistsClosed : R.superRiemannMappingExists
  superMappingUniquenessClosed : R.superMappingUniqueness
  superMappingHolomorphicClosed : R.superMappingHolomorphic
  superMappingBiholomorphicClosed : R.superMappingBiholomorphic

def RiemannSuperMappingClosed {C : ComplexSupermanifoldPackage}
    (R : RiemannSuperMappingPackage C) : Prop :=
  R.superSimplyConnected ∧ R.superRiemannMappingExists ∧
  R.superMappingUniqueness ∧ R.superMappingHolomorphic ∧ R.superMappingBiholomorphic

theorem riemann_super_mapping_closed_from_evidence
    {C : ComplexSupermanifoldPackage} (R : RiemannSuperMappingPackage C)
    (E : RiemannSuperMappingEvidence R) : RiemannSuperMappingClosed R := by
  exact And.intro E.superSimplyConnectedClosed
    (And.intro E.superRiemannMappingExistsClosed
      (And.intro E.superMappingUniquenessClosed
        (And.intro E.superMappingHolomorphicClosed E.superMappingBiholomorphicClosed)))

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse