import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

structure ErgodicTheoremPackage where
  meanErgodicTheorem : Prop
  pointwiseErgodicTheorem : Prop
  maximalErgodicTheorem : Prop
  subadditiveErgodicTheorem : Prop
  meanErgodicTheoremTerm : meanErgodicTheorem
  pointwiseErgodicTheoremTerm : pointwiseErgodicTheorem
  maximalErgodicTheoremTerm : maximalErgodicTheorem
  subadditiveErgodicTheoremTerm : subadditiveErgodicTheorem

structure ErgodicTheoremEvidence (E : ErgodicTheoremPackage) where
  meanErgodicTheoremClosed : E.meanErgodicTheorem
  pointwiseErgodicTheoremClosed : E.pointwiseErgodicTheorem
  maximalErgodicTheoremClosed : E.maximalErgodicTheorem
  subadditiveErgodicTheoremClosed : E.subadditiveErgodicTheorem

def ErgodicTheoremClosed (E : ErgodicTheoremPackage) : Prop :=
  E.meanErgodicTheorem ∧ E.pointwiseErgodicTheorem ∧ E.maximalErgodicTheorem ∧ E.subadditiveErgodicTheorem

theorem ergodic_theorem_closed_from_evidence
    (E : ErgodicTheoremPackage) (Ev : ErgodicTheoremEvidence E) :
    ErgodicTheoremClosed E := by
  exact And.intro Ev.meanErgodicTheoremClosed
    (And.intro Ev.pointwiseErgodicTheoremClosed
      (And.intro Ev.maximalErgodicTheoremClosed Ev.subadditiveErgodicTheoremClosed))

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse