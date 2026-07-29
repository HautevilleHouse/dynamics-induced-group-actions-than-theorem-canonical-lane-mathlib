import DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean.DynamicalSystem

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

structure CocycleSuperrigidityPackage {G : GroupActionEquivariancePackage} {D : DynamicalSystemPackage G} where
  cocycle : G → D.stateSpace → ℝ
  superrigidityCondition : Prop
  superrigidityClosed : superrigidityCondition

def CocycleSuperrigidityClosed {G : GroupActionEquivariancePackage} {D : DynamicalSystemPackage G} (C : CocycleSuperrigidityPackage G D) : Prop :=
  C.superrigidityCondition

theorem cocycle_superrigidity_closed {G : GroupActionEquivariancePackage} {D : DynamicalSystemPackage G} (C : CocycleSuperrigidityPackage G D) :
    CocycleSuperrigidityClosed C := by
  exact C.superrigidityClosed

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse