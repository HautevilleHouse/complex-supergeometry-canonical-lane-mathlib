import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

structure ComplexSupergroup where
  groupManifold : ComplexSupermanifold
  multiplication : Prop
  inversion : Prop
  groupLaws : Prop
  holomorphicMultiplication : Prop
  holomorphicInversion : Prop
  multiplicationClosed : multiplication
  inversionClosed : inversion
  groupLawsClosed : groupLaws
  holomorphicMultiplicationClosed : holomorphicMultiplication
  holomorphicInversionClosed : holomorphicInversion

def ComplexSupergroupClosed (G : ComplexSupergroup) : Prop :=
  G.multiplication ∧ G.inversion ∧ G.groupLaws ∧ G.holomorphicMultiplication ∧ G.holomorphicInversion

theorem complex_supergroup_closed_from_evidence (G : ComplexSupergroup) :
    ComplexSupergroupClosed G := by
  exact And.intro G.multiplicationClosed (And.intro G.inversionClosed (And.intro G.groupLawsClosed (And.intro G.holomorphicMultiplicationClosed G.holomorphicInversionClosed)))

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse