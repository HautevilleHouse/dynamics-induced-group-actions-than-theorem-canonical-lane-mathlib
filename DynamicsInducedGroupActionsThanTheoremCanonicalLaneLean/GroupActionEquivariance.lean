import DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

structure GroupActionEquivariancePackage where
  groupAction : Type → Type
  equivarianceCondition : Prop
  inducedMap : (ℕ → Type) → Type
  equivarianceHolds : equivarianceCondition

def GroupActionEquivarianceClosed (G : GroupActionEquivariancePackage) : Prop :=
  G.equivarianceCondition

theorem group_action_equivariance_closed (G : GroupActionEquivariancePackage) :
    GroupActionEquivarianceClosed G := by
  exact G.equivarianceHolds

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse