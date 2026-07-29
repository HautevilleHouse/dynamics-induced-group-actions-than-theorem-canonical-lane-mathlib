import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

structure DynamicalSystem (X : Type u) where
  stateSpace : Type u
  timeMonoid : Type v
  action : timeMonoid → stateSpace → stateSpace
  continuous : Prop
  identityAction : ∀ x : stateSpace, action (0 : timeMonoid) x = x
  composition : ∀ (t s : timeMonoid) (x : stateSpace), action (t + s) x = action t (action s x)
  actionContinuous : Prop

def DynamicalSystemClosed {X : Type u} (DS : DynamicalSystem X) : Prop :=
  DS.continuous ∧ DS.actionContinuous

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse