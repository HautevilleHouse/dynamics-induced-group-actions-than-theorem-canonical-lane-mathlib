import DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

structure DynamicsInducedGroupActionsThanTheoremState where
  object : AdmittedObject
  conclusion : bridgeClosed object ∧ gateClosed object

theorem dynamics_induced_group_actions_than_theorem_endgame (A : AdmissibleClass) :
    ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse