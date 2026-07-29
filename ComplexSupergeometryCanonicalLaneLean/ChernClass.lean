import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

structure ChernClass where
  bundle : ComplexSuperLineBundle
  curvatureForm : Prop
  firstChernClass : Prop
  integrality : Prop
  curvatureFormClosed : curvatureForm
  firstChernClassClosed : firstChernClass
  integralityClosed : integrality

def ChernClassClosed (C : ChernClass) : Prop :=
  C.curvatureForm ∧ C.firstChernClass ∧ C.integrality

theorem chern_class_closed_from_evidence (C : ChernClass) :
    ChernClassClosed C := by
  exact And.intro C.curvatureFormClosed (And.intro C.firstChernClassClosed C.integralityClosed)

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse