import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

structure InvariantMeasureClassificationPackage where
  invariantMeasures : Type u
  ergodicDecomposition : Prop
  uniqueErgodicComponent : Prop
  mixingProperties : Prop
  measureEntropy : Prop
  ergodicDecompositionTerm : ergodicDecomposition
  uniqueErgodicComponentTerm : uniqueErgodicComponent
  mixingPropertiesTerm : mixingProperties
  measureEntropyTerm : measureEntropy

structure InvariantMeasureClassificationEvidence (M : InvariantMeasureClassificationPackage) where
  ergodicDecompositionClosed : M.ergodicDecomposition
  uniqueErgodicComponentClosed : M.uniqueErgodicComponent
  mixingPropertiesClosed : M.mixingProperties
  measureEntropyClosed : M.measureEntropy

def InvariantMeasureClassificationClosed (M : InvariantMeasureClassificationPackage) : Prop :=
  M.ergodicDecomposition ∧ M.uniqueErgodicComponent ∧ M.mixingProperties ∧ M.measureEntropy

theorem invariant_measure_classification_closed_from_evidence
    (M : InvariantMeasureClassificationPackage) (E : InvariantMeasureClassificationEvidence M) :
    InvariantMeasureClassificationClosed M := by
  exact And.intro E.ergodicDecompositionClosed
    (And.intro E.uniqueErgodicComponentClosed
      (And.intro E.mixingPropertiesClosed E.measureEntropyClosed))

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse