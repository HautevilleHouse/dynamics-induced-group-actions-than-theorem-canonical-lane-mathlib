import DynamicsInducedGroupActionsCanonicalLaneLean.DynamicsCore

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

structure DynamicsAdmittedObject where
  space : Type
  dynamicalSystem : space → space
  groupAction : Type → space → space
  invariants : GroupActionInvariantsPackage
  core : DynamicsCorePackage
  conclusion : DynamicsCoreClosed core ∧ GroupActionInvariantsClosed invariants

def DynamicsWitnessClosed (O : DynamicsAdmittedObject) : Prop :=
  O.conclusion

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse