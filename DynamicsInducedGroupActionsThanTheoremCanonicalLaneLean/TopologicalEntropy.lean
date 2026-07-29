import canonicalLaneMathlib.AdmissibleClass
import DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean.DynamicalSystem

namespace HautevilleHouse
namespace DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean

structure TopologicalEntropy {X : Type u} (DS : DynamicalSystem X) where
  entropy : ℝ
  nonnegative : entropy ≥ 0
  invarianceUnderConjugacy : Prop
  productFormula : ∀ (DS2 : DynamicalSystem X), TopologicalEntropy (productSystem DS DS2) = entropy + TopologicalEntropy.entropy DS2

def TopologicalEntropyClosed {X : Type u} {DS : DynamicalSystem X} (E : TopologicalEntropy DS) : Prop :=
  E.nonnegative ∧ E.invarianceUnderConjugacy

end DynamicsInducedGroupActionsThanTheoremCanonicalLaneLean
end HautevilleHouse