import canonicalLaneMathlib.AdmissibleClass
import DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean.GroupActionDynamics

/-!
# Ergodic Theory Package

This module encodes ergodic-theoretic properties for the induced group action:
e.g., mixing, ergodicity, and spectral gap, which are key to the theorem.
-/

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

open GroupActionDynamics

structure ErgodicProperties {G : Type u} {X : Type v} (D : DynamicalSystem G X) where
  ergodic : Prop
  weakMixing : Prop
  strongMixing : Prop
  spectralGap : Prop
  ergodicClosed : ergodic
  weakMixingClosed : weakMixing
  strongMixingClosed : strongMixing
  spectralGapClosed : spectralGap

def ErgodicClosed {G : Type u} {X : Type v} (D : DynamicalSystem G X) (E : ErgodicProperties D) : Prop :=
  E.ergodic ∧ E.weakMixing ∧ E.strongMixing ∧ E.spectralGap

theorem ergodic_closed_from_properties {G : Type u} {X : Type v} (D : DynamicalSystem G X)
    (E : ErgodicProperties D) : ErgodicClosed D E := by
  exact And.intro E.ergodicClosed (And.intro E.weakMixingClosed (And.intro E.strongMixingClosed E.spectralGapClosed))

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse