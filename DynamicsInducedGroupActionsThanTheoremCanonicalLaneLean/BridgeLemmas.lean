import canonicalLaneMathlib.AdmissibleClass
import DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean.GroupActionDynamics

/-!
# Bridge Lemmas for Dynamics Induced Group Actions

This module defines the bridge and gate closure concepts adapted to the
dynamics-induced group actions setting.
-/

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

open GroupActionDynamics

def bridgeClosed {G : Type u} {X : Type v} (A : GroupActionAdmissibleClass G X) : Prop :=
  A.bridgeClosed

theorem bridge_from_admissible_class {G : Type u} {X : Type v} (A : GroupActionAdmissibleClass G X)
    : bridgeClosed A := by
  exact A.bridgeClosed

def gateClosed {G : Type u} {X : Type v} (A : GroupActionAdmissibleClass G X) : Prop :=
  A.gateClosed

theorem gate_from_admissible_class {G : Type u} {X : Type v} (A : GroupActionAdmissibleClass G X)
    : gateClosed A := by
  exact A.gateClosed

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse