import DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

def DynamicsWitnessClosed (O : DynamicsAdmittedObject) : Prop :=
  O.propertyHolds

structure DynamicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicsAdmittedObject where
  space : DynamicsSpace
  groupAction : Prop
  inducedAction : Prop
  property : Prop
  propertyHolds : Prop
  conclusion : propertyHolds

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse