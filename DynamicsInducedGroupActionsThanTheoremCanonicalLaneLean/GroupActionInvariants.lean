import DynamicsInducedGroupActionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

structure GroupActionInvariantsPackage where
  groupAction : Type u → Type v
  invariantMeasures : Prop
  ergodicDecomposition : Prop
  orbitEquivalence : Prop
  quasiInvariantMeasures : Prop

structure GroupActionInvariantsEvidence (I : GroupActionInvariantsPackage) where
  invariantMeasuresClosed : I.invariantMeasures
  ergodicDecompositionClosed : I.ergodicDecomposition
  orbitEquivalenceClosed : I.orbitEquivalence
  quasiInvariantMeasuresClosed : I.quasiInvariantMeasures

def GroupActionInvariantsClosed (I : GroupActionInvariantsPackage) : Prop :=
  I.invariantMeasures ∧ I.ergodicDecomposition ∧ I.orbitEquivalence ∧ I.quasiInvariantMeasures

theorem group_action_invariants_closed_from_evidence
    (I : GroupActionInvariantsPackage) (E : GroupActionInvariantsEvidence I) :
    GroupActionInvariantsClosed I := by
  exact And.intro E.invariantMeasuresClosed
    (And.intro E.ergodicDecompositionClosed
      (And.intro E.orbitEquivalenceClosed E.quasiInvariantMeasuresClosed))

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse