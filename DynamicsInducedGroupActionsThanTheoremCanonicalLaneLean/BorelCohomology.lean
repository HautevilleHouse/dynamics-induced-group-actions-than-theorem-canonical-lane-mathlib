import DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean.OrbitEquivalence

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

structure BorelCohomologyPackage {G : GroupActionEquivariancePackage} {D : DynamicalSystemPackage G} {C : CocycleSuperrigidityPackage G D} {O : OrbitEquivalencePackage G D C} where
  cohomologyGroup : Type
  borelCohomologyClass : Type
  classificationCondition : Prop
  classificationClosed : classificationCondition

def BorelCohomologyClosed {G : GroupActionEquivariancePackage} {D : DynamicalSystemPackage G} {C : CocycleSuperrigidityPackage G D} {O : OrbitEquivalencePackage G D C} (B : BorelCohomologyPackage G D C O) : Prop :=
  B.classificationCondition

theorem borel_cohomology_closed {G : GroupActionEquivariancePackage} {D : DynamicalSystemPackage G} {C : CocycleSuperrigidityPackage G D} {O : OrbitEquivalencePackage G D C} (B : BorelCohomologyPackage G D C O) :
    BorelCohomologyClosed B := by
  exact B.classificationClosed

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse