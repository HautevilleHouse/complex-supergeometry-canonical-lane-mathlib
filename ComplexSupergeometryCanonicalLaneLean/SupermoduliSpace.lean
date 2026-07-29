import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

structure SupermoduliSpacePackage where
  bosonicModuli : Type u
  fermionicDeformations : Type v
  supermoduliStructure : Prop
  periodMatrixSuper : Prop
  supermoduliStructureClosed : supermoduliStructure
  periodMatrixSuperClosed : periodMatrixSuper

structure SupermoduliSpaceEvidence (S : SupermoduliSpacePackage) where
  supermoduliStructureClosed : S.supermoduliStructure
  periodMatrixSuperClosed : S.periodMatrixSuper

def SupermoduliSpaceClosed (S : SupermoduliSpacePackage) : Prop :=
  S.supermoduliStructure ∧ S.periodMatrixSuper

theorem supermoduli_space_closed_from_evidence (S : SupermoduliSpacePackage)
    (E : SupermoduliSpaceEvidence S) : SupermoduliSpaceClosed S := by
  exact And.intro E.supermoduliStructureClosed E.periodMatrixSuperClosed

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse