import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

structure DynamicalSystemAction where
  phaseSpace : Type u
  symmetryGroup : Type v
  groupAction : symmetryGroup → phaseSpace → phaseSpace
  actionContinuous : Prop
  actionSmooth : Prop
  invariantMeasures : Prop
  ergodicComponents : Prop
  actionContinuousTerm : actionContinuous
  actionSmoothTerm : actionSmooth

structure DynamicalSystemActionEvidence (D : DynamicalSystemAction) where
  actionContinuousClosed : D.actionContinuous
  actionSmoothClosed : D.actionSmooth
  invariantMeasuresClosed : D.invariantMeasures
  ergodicComponentsClosed : D.ergodicComponents

def DynamicalSystemActionClosed (D : DynamicalSystemAction) : Prop :=
  D.actionContinuous ∧ D.actionSmooth ∧ D.invariantMeasures ∧ D.ergodicComponents

theorem dynamical_system_action_closed_from_evidence
    (D : DynamicalSystemAction) (E : DynamicalSystemActionEvidence D) :
    DynamicalSystemActionClosed D := by
  exact And.intro E.actionContinuousClosed
    (And.intro E.actionSmoothClosed
      (And.intro E.invariantMeasuresClosed E.ergodicComponentsClosed))

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse