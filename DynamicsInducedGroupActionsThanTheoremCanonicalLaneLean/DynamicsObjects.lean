import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DynamicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  group : Type
  groupTopology : TopologicalSpace group
  groupMul : group → group → group
  groupInv : group → group
  groupId : group
  groupIsGroup : Group group
  action : group → carrier → carrier
  actionContinuous : Continuous (Function.uncurry action)

structure DynamicsAdmittedObject where
  space : DynamicsSpace
  faithfulAction : Prop
  minimalAction : Prop
  ergodicAction : Prop
  thanStatement : Type
  thanTopology : TopologicalSpace thanStatement
  inducedGroupAction : thanStatement → carrier → carrier
  conclusion : inducedGroupAction preserves the measure

def DynamicsWitnessClosed (O : DynamicsAdmittedObject) : Prop :=
  O.conclusion

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse
