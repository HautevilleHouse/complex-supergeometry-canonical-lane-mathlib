import ComplexSupergeometryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSupergeometryCanonicalLaneLean

structure ComplexSupermanifold where
  carrier : Type
  topology : TopologicalSpace carrier
  structureSheaf : Type
  supercommutative : Prop
  localModel : Prop
  holomorphicStructure : Prop
  superdimension : Nat × Nat

structure ComplexSupergeometryAdmittedObject where
  manifold : ComplexSupermanifold
  complexSupergeometryStatement : Prop
  conclusion : complexSupergeometryStatement

structure ComplexSupergeometryEndgameState where
  object : ComplexSupergeometryAdmittedObject

def ComplexSupergeometryWitnessClosed (O : ComplexSupergeometryAdmittedObject) : Prop :=
  O.complexSupergeometryStatement

end ComplexSupergeometryCanonicalLaneLean
end HautevilleHouse