import HautevilleHouse.DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean.DynamicsObjects

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

structure GroupActionsPackage (D : DynamicsSpace) where
  orbitStructure : Type
  invariantMeasures : Type
  ergodicDecomposition : Prop
  mixingProperties : Prop
  entropyTheory : Prop

structure GroupActionsEvidence (D : DynamicsSpace) (G : GroupActionsPackage D) where
  orbitStructureClosed : G.orbitStructure
  invariantMeasuresClosed : G.invariantMeasures
  ergodicDecompositionClosed : G.ergodicDecomposition
  mixingPropertiesClosed : G.mixingProperties
  entropyTheoryClosed : G.entropyTheory

def GroupActionsClosed (D : DynamicsSpace) (G : GroupActionsPackage D) : Prop :=
  G.orbitStructure ∧ G.invariantMeasures ∧ G.ergodicDecomposition ∧ G.mixingProperties ∧ G.entropyTheory

theorem group_actions_closed_from_evidence (D : DynamicsSpace) (G : GroupActionsPackage D) (E : GroupActionsEvidence D G) : GroupActionsClosed D G := by
  exact And.intro E.orbitStructureClosed (And.intro E.invariantMeasuresClosed (And.intro E.ergodicDecompositionClosed (And.intro E.mixingPropertiesClosed E.entropyTheoryClosed)))

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse
