import HautevilleHouse.DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean.GroupActionsPackage

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

structure ThanTheoremPackage {D : DynamicsSpace} {G : GroupActionsPackage D} (E : GroupActionsEvidence D G) where
  actionPreservesMeasure : Prop
  entropyPesinFormula : Prop
  equilibriumStates : Prop
  SRBMeasure : Prop
  thanConclusion : Prop

structure ThanTheoremEvidence {D : DynamicsSpace} {G : GroupActionsPackage D} {E : GroupActionsEvidence D G} (T : ThanTheoremPackage E) where
  actionPreservesMeasureClosed : T.actionPreservesMeasure
  entropyPesinFormulaClosed : T.entropyPesinFormula
  equilibriumStatesClosed : T.equilibriumStates
  SRBMeasureClosed : T.SRBMeasure
  thanConclusionClosed : T.thanConclusion

def ThanTheoremClosed {D : DynamicsSpace} {G : GroupActionsPackage D} {E : GroupActionsEvidence D G} (T : ThanTheoremPackage E) : Prop :=
  T.actionPreservesMeasure ∧ T.entropyPesinFormula ∧ T.equilibriumStates ∧ T.SRBMeasure ∧ T.thanConclusion

theorem than_theorem_closed_from_evidence {D : DynamicsSpace} {G : GroupActionsPackage D} {E : GroupActionsEvidence D G} (T : ThanTheoremPackage E) (Ev : ThanTheoremEvidence T) : ThanTheoremClosed T := by
  exact And.intro Ev.actionPreservesMeasureClosed (And.intro Ev.entropyPesinFormulaClosed (And.intro Ev.equilibriumStatesClosed (And.intro Ev.SRBMeasureClosed Ev.thanConclusionClosed)))

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse
