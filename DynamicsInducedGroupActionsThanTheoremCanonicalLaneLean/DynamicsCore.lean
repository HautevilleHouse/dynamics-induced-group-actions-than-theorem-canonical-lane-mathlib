import DynamicsInducedGroupActionsCanonicalLaneLean.GroupActionInvariants

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

structure DynamicsCorePackage where
  dynamicalSystem : Type u → Type v
  entropy : Prop
  hyperbolicity : Prop
  symbolicDynamics : Prop
  thermodynamicFormalism : Prop

structure DynamicsCoreEvidence (D : DynamicsCorePackage) where
  entropyClosed : D.entropy
  hyperbolicityClosed : D.hyperbolicity
  symbolicDynamicsClosed : D.symbolicDynamics
  thermodynamicFormalismClosed : D.thermodynamicFormalism

def DynamicsCoreClosed (D : DynamicsCorePackage) : Prop :=
  D.entropy ∧ D.hyperbolicity ∧ D.symbolicDynamics ∧ D.thermodynamicFormalism

theorem dynamics_core_closed_from_evidence
    (D : DynamicsCorePackage) (E : DynamicsCoreEvidence D) :
    DynamicsCoreClosed D := by
  exact And.intro E.entropyClosed
    (And.intro E.hyperbolicityClosed
      (And.intro E.symbolicDynamicsClosed E.thermodynamicFormalismClosed))

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse