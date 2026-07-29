import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

structure GroupActionCohomologyPackage where
  group : Type u
  actionSpace : Type v
  cohomologyGroups : Nat → Type w
  cocycleCondition : Prop
  coboundaryCondition : Prop
  cohomologyWellDefined : Prop
  cocycleConditionTerm : cocycleCondition
  coboundaryConditionTerm : coboundaryCondition
  cohomologyWellDefinedTerm : cohomologyWellDefined

structure GroupActionCohomologyEvidence (G : GroupActionCohomologyPackage) where
  cocycleConditionClosed : G.cocycleCondition
  coboundaryConditionClosed : G.coboundaryCondition
  cohomologyWellDefinedClosed : G.cohomologyWellDefined

def GroupActionCohomologyClosed (G : GroupActionCohomologyPackage) : Prop :=
  G.cocycleCondition ∧ G.coboundaryCondition ∧ G.cohomologyWellDefined

theorem group_action_cohomology_closed_from_evidence
    (G : GroupActionCohomologyPackage) (E : GroupActionCohomologyEvidence G) :
    GroupActionCohomologyClosed G := by
  exact And.intro E.cocycleConditionClosed
    (And.intro E.coboundaryConditionClosed E.cohomologyWellDefinedClosed)

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse