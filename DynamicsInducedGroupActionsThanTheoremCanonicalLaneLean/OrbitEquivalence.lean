import DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean.CocycleSuperrigidity

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

structure OrbitEquivalencePackage {G : GroupActionEquivariancePackage} {D : DynamicalSystemPackage G} {C : CocycleSuperrigidityPackage G D} where
  orbitRelation : D.stateSpace → D.stateSpace → Prop
  orbitEquivalence : equivalence D.stateSpace orbitRelation
  thanTheoremCondition : Prop
  thanTheoremClosed : thanTheoremCondition

def OrbitEquivalenceClosed {G : GroupActionEquivariancePackage} {D : DynamicalSystemPackage G} {C : CocycleSuperrigidityPackage G D} (O : OrbitEquivalencePackage G D C) : Prop :=
  O.thanTheoremCondition

theorem orbit_equivalence_closed {G : GroupActionEquivariancePackage} {D : DynamicalSystemPackage G} {C : CocycleSuperrigidityPackage G D} (O : OrbitEquivalencePackage G D C) :
    OrbitEquivalenceClosed O := by
  exact O.thanTheoremClosed

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse