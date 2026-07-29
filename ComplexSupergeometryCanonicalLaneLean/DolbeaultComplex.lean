import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

structure DolbeaultComplex where
  supermanifold : ComplexSupermanifold
  differentialOperator : Prop
  cohomologyGroups : Prop
  poincareLemma : Prop
  differentialOperatorClosed : differentialOperator
  cohomologyGroupsClosed : cohomologyGroups
  poincareLemmaClosed : poincareLemma

def DolbeaultComplexClosed (D : DolbeaultComplex) : Prop :=
  D.differentialOperator ∧ D.cohomologyGroups ∧ D.poincareLemma

theorem dolbeault_complex_closed_from_evidence (D : DolbeaultComplex) :
    DolbeaultComplexClosed D := by
  exact And.intro D.differentialOperatorClosed (And.intro D.cohomologyGroupsClosed D.poincareLemmaClosed)

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse