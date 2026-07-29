import canonicalLaneMathlib.AdmissibleClass
import DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean.GroupActionDynamics
import DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean.BridgeLemmas

/-!
# Final Theorem Closure

This module defines the constrained closure for the Dynamics Induced Group Actions
Than Theorem and provides the endgame proof.
-/

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

def ConstrainedDynamicsClosure {G : Type u} {X : Type v} (A : GroupActionAdmissibleClass G X) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamics_endgame {G : Type u} {X : Type v} (A : GroupActionAdmissibleClass G X)
    : ConstrainedDynamicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse