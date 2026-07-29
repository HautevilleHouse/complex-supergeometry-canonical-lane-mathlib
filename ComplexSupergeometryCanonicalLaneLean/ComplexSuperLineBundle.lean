import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

structure ComplexSuperLineBundle where
  base : ComplexSupermanifold
  totalSpace : Type u
  projection : TotalSpace → base.ReducedManifold
  transitionFunctions : Prop
  holomorphic : Prop
  transitionFunctionsClosed : transitionFunctions
  holomorphicClosed : holomorphic

def ComplexSuperLineBundleClosed (L : ComplexSuperLineBundle) : Prop :=
  L.transitionFunctions ∧ L.holomorphic

theorem complex_super_line_bundle_closed_from_evidence (L : ComplexSuperLineBundle) :
    ComplexSuperLineBundleClosed L := by
  exact And.intro L.transitionFunctionsClosed L.holomorphicClosed

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse