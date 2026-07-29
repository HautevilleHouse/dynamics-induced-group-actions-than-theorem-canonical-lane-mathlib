import canonicalLaneMathlib.AdmissibleClass
import DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean.DynamicalSystem

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

structure GroupActionInvariant {X : Type u} (DS : DynamicalSystem X) where
  invariantSet : Set DS.stateSpace
  forwardInvariant : ∀ (t : DS.timeMonoid) (x : DS.stateSpace), x ∈ invariantSet → DS.action t x ∈ invariantSet
  backwardInvariant : ∀ (t : DS.timeMonoid) (x : DS.stateSpace), DS.action t x ∈ invariantSet → x ∈ invariantSet
  topologicalClosure : Prop

def GroupActionInvariantClosed {X : Type u} {DS : DynamicalSystem X} (I : GroupActionInvariant DS) : Prop :=
  I.forwardInvariant ∧ I.backwardInvariant

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse