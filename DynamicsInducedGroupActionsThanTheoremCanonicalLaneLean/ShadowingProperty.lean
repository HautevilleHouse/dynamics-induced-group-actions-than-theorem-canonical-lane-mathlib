import canonicalLaneMathlib.AdmissibleClass
import DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean.DynamicalSystem

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

structure ShadowingProperty {X : Type u} (DS : DynamicalSystem X) where
  shadowingDistance : ℝ
  forAllEpsilon : ∀ (ε > 0), ∃ (δ > 0), ∀ (seq : ℕ → DS.stateSpace), (∀ (n : ℕ), dist (DS.action (n : DS.timeMonoid) (seq 0)) (seq n) < δ) →
    ∃ (x : DS.stateSpace), ∀ (n : ℕ), dist (DS.action (n : DS.timeMonoid) x) (seq n) < ε
  shadowingClosed : Prop

def ShadowingPropertyClosed {X : Type u} {DS : DynamicalSystem X} (S : ShadowingProperty DS) : Prop :=
  S.forAllEpsilon

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse