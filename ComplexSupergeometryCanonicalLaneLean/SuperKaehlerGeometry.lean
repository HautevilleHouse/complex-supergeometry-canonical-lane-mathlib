import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

structure SuperKaehlerPackage where
  supermanifold : SuperRiemannSurface
  superKaehlerForm : Type u
  closedness : Prop
  positivity : Prop
  superRicciForm : Type v
  superKaehlerEinsteinCondition : Prop

structure SuperKaehlerEvidence (K : SuperKaehlerPackage) where
  closednessClosed : K.closedness
  positivityClosed : K.positivity
  superKaehlerEinsteinConditionClosed : K.superKaehlerEinsteinCondition

def SuperKaehlerClosed (K : SuperKaehlerPackage) : Prop :=
  K.closedness ∧ K.positivity ∧ K.superKaehlerEinsteinCondition

theorem super_kaehler_closed_from_evidence (K : SuperKaehlerPackage) (E : SuperKaehlerEvidence K) : SuperKaehlerClosed K := by
  exact And.intro E.closednessClosed (And.intro E.positivityClosed E.superKaehlerEinsteinConditionClosed)

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse