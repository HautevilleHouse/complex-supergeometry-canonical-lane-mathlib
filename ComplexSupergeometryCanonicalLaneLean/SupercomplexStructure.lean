import ComplexSupergeometryCanonicalLaneLean.ComplexSupergeometryObjects

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

structure SupercomplexStructure where
  underlyingManifold : ComplexSupermanifold
  oddCoordinates : Nat
  transitionFunctors : Prop
  holomorphicityCompatibility : Prop
  supercommutativeAlgebra : Prop
  localSupercoordinates : Prop

def SupercomplexStructureClosed (S : SupercomplexStructure) : Prop :=
  S.holomorphicityCompatibility ∧ S.supercommutativeAlgebra ∧ S.localSupercoordinates

structure SupercomplexStructureEvidence (S : SupercomplexStructure) where
  holomorphicityCompatibilityClosed : S.holomorphicityCompatibility
  supercommutativeAlgebraClosed : S.supercommutativeAlgebra
  localSupercoordinatesClosed : S.localSupercoordinates

theorem supercomplex_structure_closed_from_evidence (S : SupercomplexStructure)
    (E : SupercomplexStructureEvidence S) : SupercomplexStructureClosed S := by
  exact And.intro E.holomorphicityCompatibilityClosed
    (And.intro E.supercommutativeAlgebraClosed E.localSupercoordinatesClosed)

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse