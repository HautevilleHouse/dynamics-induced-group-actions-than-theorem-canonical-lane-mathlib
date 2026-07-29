import canonicalLaneMathlib.AdmissibleClass

/-!
# Group Action Dynamics Package

This module defines the dynamical system and group action structure underlying
the Dynamics Induced Group Actions Than Theorem. The core objects are a group
acting on a topological space with an invariant measure, and the induced action
on associated function spaces.
-/

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

structure DynamicalSystem (G : Type u) (X : Type v) where
  group : G
  space : X
  action : G → X → X
  groupTopology : TopologicalSpace G
  spaceTopology : TopologicalSpace X
  actionContinuous : Continuous (Function.uncurry action)
  invariantMeasure : Measure X
  measurePreserving : ∀ g : G, MeasurePreserving (action g) invariantMeasure invariantMeasure

structure InducedAction (G : Type u) (X : Type v) (Y : Type w) (ϕ : X → Y) where
  baseSystem : DynamicalSystem G X
  targetSpace : Type w
  map : X → targetSpace
  inducedAction : G → targetSpace → targetSpace
  equivariance : ∀ (g : G) (x : X), inducedAction g (map x) = map (baseSystem.action g x)
  mapContinuous : Continuous map

structure GroupActionAdmissibleClass (G : Type u) (X : Type v) extends AdmissibleClass where
  dynamicalSystem : DynamicalSystem G X
  inducedAction : InducedAction G X (DynamicalSystem.space dynamicalSystem) (fun x => x)
  bridgeClosed : Prop
  gateClosed : Prop

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse